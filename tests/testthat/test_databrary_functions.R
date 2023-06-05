context("databrary_* functions")
library(PLAYdata)

# databrary_test_login ---------------------------------------------------
test_that("databrary_test_login returns logical", {
  expect_true(class(databrary_test_login()) == "logical")
})

test_that("databrary_test_login", {
  expect_error(databrary_test_login(env_var = -1))
  expect_error(databrary_test_login(env_var = list(a=1, b=2)))
  expect_error(databrary_test_login(env_var = TRUE))
})

# databrary_verify_volume_access ---------------------------------------------------
test_that("databrary_verify_volume_access returns list", {
  expect_true(class(databrary_verify_volume_access()) == "list")
})

test_that("databrary_verify_volume_access", {
  expect_error(databrary_verify_volume_access(vol_id = -1))
  expect_error(databrary_verify_volume_access(vol_id = list(a=1, b=2)))
  expect_error(databrary_verify_volume_access(vol_id = TRUE))
})

# databrary_load_data_csv ---------------------------------------------------
test_that("databrary_load_data_csv returns data.frame", {
  expect_true(class(databrary_load_data_csv()) == "data.frame")
})

test_that("databrary_load_data_csv", {
  expect_error(databrary_load_data_csv(session_id = -1))
  expect_error(databrary_load_data_csv(session_id = list(a=1, b=2)))
  expect_error(databrary_load_data_csv(session_id = TRUE))
  
  expect_error(databrary_load_data_csv(asset_id = -1))
  expect_error(databrary_load_data_csv(asset_id = list(a=1, b=2)))
  expect_error(databrary_load_data_csv(asset_id = TRUE))
  
  expect_error(databrary_load_data_csv(vb = -1))
  expect_error(databrary_load_data_csv(vb = list(a=1, b=2)))
  expect_error(databrary_load_data_csv(vb = 'a'))
})

