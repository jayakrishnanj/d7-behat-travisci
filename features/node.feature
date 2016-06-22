@api
Feature: Test DrupalContext
  In order to prove the Drupal context using the blackbox driver is working properly
  As a developer
  I need to use the step definitions of this context

Scenario: Node
Given I am viewing an "article" node with the title "My title"
Given a "page" node with the title "About"
Given I am viewing my "Article" node with the title "My latest blog"
Given "Page" nodes:
| title      | body                    |
| About      | An about page           |
| author     |  Romisha                |
| Contact Us | Our contact information |
Given I am viewing an "article" node:
| title       | My title             |
| body        | Some article content |
| author      | Joe Author           |
| field_image | image.png            |
Then I should be able to edit an "article" node
