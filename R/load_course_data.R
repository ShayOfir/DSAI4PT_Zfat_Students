# Course data loader: load_course_data(name)
# Usage in a notebook:
#   source("https://raw.githubusercontent.com/ShayOfir/DSAI4PT_Zfat_Students/main/R/load_course_data.R")
#   load_course_data("mobility_aids")
# Local testing: options(course_data_base = "path/to/repo/") makes the loader read
# files from a local clone instead of raw.githubusercontent.com.

course_repo_raw <- "https://raw.githubusercontent.com/ShayOfir/DSAI4PT_Zfat_Students/main/"

# Registry: how each dataset is obtained. "repo" = file in this repository (licence
# allows redistribution), "remote" = downloaded from the original source.
course_datasets <- function() {
  data.frame(
    name = c("uci_activity_older_adults", "mobility_aids_manifest", "mobility_aids",
             "gaitndd", "gaitdb", "fashion_mnist"),
    source = c("repo", "repo", "remote", "remote", "remote", "remote"),
    stringsAsFactors = FALSE)
}

.course_base <- function() getOption("course_data_base", course_repo_raw)

# download one file unless it already exists; returns the local path
.course_fetch <- function(url, dest, headers = NULL) {
  dir.create(dirname(dest), recursive = TRUE, showWarnings = FALSE)
  if (!file.exists(dest)) {
    if (grepl("^https?://", url)) {
      utils::download.file(url, dest, mode = "wb", quiet = TRUE, headers = headers)
    } else {
      stopifnot(file.exists(url))     # local simulation of the repo
      file.copy(url, dest)
    }
  }
  dest
}

load_course_data <- function(name, dest = "data") {
  known <- course_datasets()$name
  if (!name %in% known)
    stop("Unknown dataset '", name, "'. Available: ", paste(known, collapse = ", "))
  base <- .course_base()

  if (name == "uci_activity_older_adults") {
    # CC BY 4.0, UCI dataset 427; returns the path of the zip (see chapter 10)
    return(.course_fetch(paste0(base, "data/uci_activity_older_adults.zip"),
                         file.path(dest, "uci_activity_older_adults.zip")))
  }
  if (name == "mobility_aids_manifest") {
    p <- .course_fetch(paste0(base, "data/mobility_aids_manifest.csv"),
                       file.path(dest, "mobility_aids_manifest.csv"))
    return(utils::read.csv(p, stringsAsFactors = FALSE))
  }
  if (name == "mobility_aids") {
    # images come from Wikimedia Commons; licence and author of each are in the manifest
    man <- load_course_data("mobility_aids_manifest", dest)
    man$local <- file.path(dest, "mobility_aids",
                           sprintf("%s_%02d.jpg", man$class,
                                   ave(seq_len(nrow(man)), man$class, FUN = seq_along)))
    ua <- c("User-Agent" = "DSAI4PT-course/0.1 (teaching notebook)")
    for (i in seq_len(nrow(man))) {
      u <- paste0("https://commons.wikimedia.org/wiki/Special:FilePath/",
                  utils::URLencode(gsub(" ", "_", man$file[i]), reserved = TRUE), "?width=320")
      try(.course_fetch(u, man$local[i], headers = ua), silent = TRUE)
    }
    man$downloaded <- file.exists(man$local)
    return(man)
  }
  if (name == "gaitndd") {
    # PhysioNet, Gait in Neurodegenerative Disease Database 1.0.0; returns the folder
    recs <- c(paste0("control", 1:16), paste0("hunt", 1:20),
              paste0("park", 1:15), paste0("als", 1:13))
    for (f in c("subject-description.txt", paste0(recs, ".ts")))
      .course_fetch(paste0("https://physionet.org/files/gaitndd/1.0.0/", f),
                    file.path(dest, "gaitndd", f))
    return(file.path(dest, "gaitndd"))
  }
  if (name == "gaitdb") {
    # PhysioNet, Gait in Aging and Disease Database 1.0.0; returns the folder
    fs <- c("y1-23-si.txt", "y2-29-si.txt", "y3-23-si.txt", "y4-21-si.txt", "y5-26-si.txt",
            "o1-76-si.txt", "o2-74-si.txt", "o3-75-si.txt", "o4-77-si.txt", "o5-71-si.txt",
            paste0("pd", 1:5, "-si.txt"))
    for (f in fs)
      .course_fetch(paste0("https://physionet.org/files/gaitdb/1.0.0/", f),
                    file.path(dest, "gaitdb", f))
    return(file.path(dest, "gaitdb"))
  }
  if (name == "fashion_mnist") {
    # Zalando Research (MIT); returns the folder with the 4 .gz files.
    # (In the torch chapters, torchvision::fashion_mnist_dataset(download = TRUE) does the same.)
    u <- "http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/"
    for (f in c("train-images-idx3-ubyte.gz", "train-labels-idx1-ubyte.gz",
                "t10k-images-idx3-ubyte.gz", "t10k-labels-idx1-ubyte.gz"))
      .course_fetch(paste0(u, f), file.path(dest, "fashion_mnist", f))
    return(file.path(dest, "fashion_mnist"))
  }
}
