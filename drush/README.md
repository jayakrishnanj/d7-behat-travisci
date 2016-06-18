# Drush configuration and aliases

This directory is intended to contain drush configuration that is not site or environment specific.

Site specific drush configuration lives in `sites/[site-name]`.

## Site aliases

You should add the Drush aliases for any remote environments (such as Acquia Cloud) to the `site-aliases` directory. This allows developers to access remote environments using simple aliases such as `drush @mysite.dev uli`. Note that if you are using Acquia Cloud, developers can also download these aliases manually from their Insight account, but providing them with the project makes everyone’s life a little easier.

You can find these aliases for ACE and ACSF sites by logging into https://insight.acquia.com and going to the _Credentials_ tab on your user profile. Download and place the relevant alias file into `site-aliases`.

Note that if the version of Drush that your project uses is significantly ahead of the version available in the remote environment, you’ll need to manually set `$drush_major_version` at the top of your alias files to match the version of Drush on the remote environment. For instance, at the time this document is being written, Drush 9 is in development and only Drush8 is available on Acquia Cloud, so you’d want to add the following to the top of your aliases: `$drush_major_version = 8;`