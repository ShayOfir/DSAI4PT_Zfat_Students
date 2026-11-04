# DSAI4PT_Zfat_Students

Public student materials for the course "Data Science and AI in Motor Rehabilitation" (MSc PT, Safed): Colab notebooks and the course data pack.

## Layout
- `templates/` - `template.ipynb` (starter notebook) and `spike1_install_timing.ipynb` (one-off install timing test).
- `R/load_course_data.R` - `load_course_data(name)`; reads from this repo or downloads from the original source.
- `data/` - only files whose licence allows redistribution (see `data/DATA_LICENCES.md`). Other datasets are downloaded from their original URLs.

## Open a notebook in Colab
https://colab.research.google.com/github/ShayOfir/DSAI4PT_Zfat_Students/blob/main/templates/template.ipynb

Then Runtime -> Change runtime type -> R. Submit via File -> Download -> Download .ipynb and upload to Moodle.

## Data loader
```r
source("https://raw.githubusercontent.com/ShayOfir/DSAI4PT_Zfat_Students/main/R/load_course_data.R")
course_datasets()                   # list of datasets
load_course_data("mobility_aids")   # images are downloaded to ./data
```
