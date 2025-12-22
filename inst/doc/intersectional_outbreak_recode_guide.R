## ----eval=F-------------------------------------------------------------------
# ## get MSF standard dictionary for measles
# recode_dict <- msf_dict("measles", compact = FALSE)  |>
#   select("variable" = data_element_shortname,
#          "values_short" = option_code,
#          "values_long" = option_name)
# 
# ## browse dictionary
# View(recode_dict)

## ----eval=F-------------------------------------------------------------------
# ## Add the appropriate column names after the equals signs
# 
# linelist_cleaned <- rename(linelist_cleaned,
#   acute_otitis_media              =   , # BOOLEAN           (REQUIRED)
#   age_days                        =   , # INTEGER_POSITIVE  (REQUIRED)
#   age_months                      =   , # INTEGER_POSITIVE  (REQUIRED)
#   age_years                       =   , # INTEGER_POSITIVE  (REQUIRED)
#   candidiasis                     =   , # BOOLEAN           (REQUIRED)
#   case_number                     =   , # TEXT              (REQUIRED)
#   cough                           =   , # BOOLEAN           (REQUIRED)
#   croup                           =   , # BOOLEAN           (REQUIRED)
#   date_of_consultation_admission  =   , # DATE              (REQUIRED)
#   residential_status              =   , # TEXT              (optional)
#   residential_status_brief        =   , # TEXT              (optional)
#   treatment_facility_name         =   , # TEXT              (optional)
#   treatment_facility_site         =   , # TEXT              (optional)
#   treatment_location              =   , # ORGANISATION_UNIT (optional)
#   trimester                       =     # TEXT              (optional)
# )
# 
# 

## ----eval=F-------------------------------------------------------------------
# linelist_processing <- linelist_processing |>
#   mutate(sex_id = case_match(
#     sex_id,
#     c("M", "m")       ~ "Male",
#     c("F", "FEMALE")  ~ "Female" ,
#     .default = sex_id )) |>
# 
#   mutate(outcome = case_match(
#     outcome,
#     c("Dead in facility - short") ~ "Dead in facility (<4h)",
#     c("Dead in facility - long") ~ "Dead in facility (>4h)",
#     c("Sent home", "Home") ~ "Discharged home",
#     c("Death in community", "Dead in community") ~ "Dead in community",
#     c("DOA") ~ "Dead on arrival",
#     c("Left") ~ "Left against medical advice",
#     c("Transferred - MSF") ~ "Transferred (to an MSF facility)",
#     c("Transferred - External") ~ "Transferred (to External Facility)",
#     .default = outcome))
# 

