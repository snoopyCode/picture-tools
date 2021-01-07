# Helpful little tools and commands for pictures

## Tools 

### ExifTool

Read and write media meta data

```
$ brew install exiftool
```

Some [helpful commands for Image Organization](https://ninedegreesbelow.com/photography/exiftool-commands.html)

## Commands

### Rename pictures after create date

```
$ exiftool '-filename<CreateDate' -d %y%m%d_%H%M%S%%-c.%%le -r -ext jpg .
```

Renames all files in current folder after create create date read from the exif data from the file in the format with the example `200725_143915.jpg`

### Imagemagick

Install imagemagick (for High Sierra it only works from source and takes a long time)
```
$ brew install imagemagick --build-from-source
```


