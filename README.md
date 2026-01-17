# Learn Ruby With Tests

This project is an adaptation of "Learn Go with Tests" for Ruby. It is designed to help you explore the Ruby language by writing tests first.

## Prerequisites

- **Ruby**: You need to have Ruby installed. This project is using Ruby 3.3.0.
  - You can check your ruby version with `ruby -v`.
  - If you need to install Ruby, consider using a version manager like `rbenv` or `rvm`.

- **Bundler**: You need Bundler to manage dependencies.
  - Install it with: `gem install bundler`

## Setup

1. **Clone the repository** (if you haven't already).

2. **Install dependencies**:
   Run the following command in the project root to install the required gems (including RSpec for testing):
   ```bash
   bundle install
   ```

## Running Tests

We use RSpec for testing. You can run the tests using `bundle exec rspec` or the default `rake` task.

- **Run all tests**:
  ```bash
  bundle exec rspec
  ```
  OR
  ```bash
  rake
  ```

- **Run a specific test file**:
  ```bash
  bundle exec rspec spec/hello_world_spec.rb
  ```

## Philosophy

- **TDD (Test Driven Development)**: We write the test first, see it fail, write the minimum code to make it pass, and then refactor.
- **Incremental Learning**: We explore language features step-by-step.