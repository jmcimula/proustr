context("books")

test_that("book tibble is created", {
  pb_df <- proust_books()
  expect_equal(nrow(pb_df), 4690)
  expect_equal(length(pb_df), 4)
  expect_true(inherits(pb_df, "data.frame"))
  expect_true(inherits(pb_df, "tbl_df"))
  expect_true(inherits(pb_df, "tbl"))
})

context("characters")

test_that("characters tibble creation", {
  pc_df <- proust_characters()
  expect_equal(nrow(pc_df), 461)
  expect_equal(length(pc_df), 1)
  expect_true(inherits(pc_df, "data.frame"))
  expect_true(inherits(pc_df, "tbl_df"))
  expect_true(inherits(pc_df, "tbl"))
})

context("stopwords")

test_that("stopwords tibble creation", {
  prd_df <- proust_stopwords()
  expect_equal(nrow(prd_df), 783)
  expect_equal(length(prd_df), 1)
  expect_true(inherits(prd_df, "data.frame"))
  expect_true(inherits(prd_df, "tbl_df"))
  expect_true(inherits(prd_df, "tbl"))
})

context("sentiment")

test_that("sentiment tibble creation", {
  prsent_df <- proust_sentiments()
  expect_equal(nrow(prsent_df), 14127)
  expect_equal(length(prsent_df), 2)
  expect_true(inherits(prsent_df, "data.frame"))
  expect_true(inherits(prsent_df, "tbl_df"))
  expect_true(inherits(prsent_df, "tbl"))
})

context("random")

test_that("random  creation", {
  random <- proust_random()
  expect_equal(length(random), 1)
  expect_true(inherits(random, "character"))
  random <- proust_random(count = 2)
  expect_equal(length(random), 1)
  expect_true(inherits(random, "character"))
  random <- proust_random(count = 3, collapse = FALSE)
  expect_equal(length(random), 1)
  expect_equal(nrow(random), 3)
  expect_true(inherits(random, "data.frame"))
  expect_true(inherits(random, "tbl_df"))
  expect_true(inherits(random, "tbl"))
})

