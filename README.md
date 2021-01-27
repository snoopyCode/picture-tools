# Helpful little tools and commands for pictures

## Tools (for MacOS)

### ExifTool

Read and write media meta data

```
$ brew install exiftool
```

Some [helpful commands for Image Organization](https://ninedegreesbelow.com/photography/exiftool-commands.html)

### Imagemagick

Install imagemagick (for High Sierra it only works from source and takes a long time)
```
$ brew install imagemagick --build-from-source
```

## Use Cases

### Rename pictures after create date

```
$ exiftool '-filename<CreateDate' -d %y%m%d_%H%M%S%%-c.%%le -r -ext jpg .
```

Renames all files in current folder after create create date read from the exif data from the file in the format with the example `200725_143915.jpg`

### Rotate images

Uses '`exiftool` and `sips` (MacOS) or `convert` (Linux).

The script [rotate.sh](rotate.sh) rotates every jpg images in the current folder based on it's exif data `orientation` in order to avoid that the images is shown wrongly rotated in some devices or tools.

```
$ cd <folder with jpgs>
$ rotate.sh
```

