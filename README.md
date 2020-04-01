# templates

This private repository cointains branches that match the customer-specific templates folders to be placed in the main/template/ folder of Chamilo.

Each branch should contains directly the folders that constitute the template. The name of the branch is the name of the template directory.
Each branch should also contain a README.md file inside it, indicating for which version of Chamilo this TPL was designed, in the following format:

```
Version: 1.11.x
Creation date: 2017-09-28
```
Usually, any template branch will be matched by the corresponding branch in the CSS repository: https://github.com/beeznest/css

## Creating a new branch

To create a new branch called "example" in a working Chamilo installation:
```
cd main/template
git clone -b master https://github.com/beeznest/templates example
cd example
git checkout -b example
vim README.md
# Change the contents of the README file as explained above
# Add all files corresponding to this template
git add .
git commit -m "Initial import for 'example' template"
git push origin example
```

## Downloading an existing template

To download an existing template 'example', get into an existing Chamilo installation and do:
```
cd main/template
git clone -b example https://github.com/beeznest/templates example
```
That's all. Don't forget to add the name of the destination folder, otherwise it will be called 'templates'.
