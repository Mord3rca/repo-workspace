# Repo workspace

Makefile on top of Buildroot to make things easier (at least for me)

## Setup

You are going to need `repo` to use this. You can setup the workspace with the following commands:

```sh
mkdir workspace
cd workspace
repo init -u ssh://git@github.com/Mord3rca/manifests
repo sync
```

## Compile a product

If you want to compile a product, you can just call: `make <product>`

The workspace will take care of the defconfig & building.

## Structure

* **build/**: Contains everything for building like Buildroot repo itself

* **config/**: Contains configuration like additional Buildroot tree

* **documentation/**: If you have time and want to read something

* **package/**: Contains package to build / copy to the targeted product
