# LaTeX template

## Files

- .gitignore: The rules to ignore the files for Git repository.
- .gitattributes: The rule of files to detect text/binary.
- latexmkrc: A configuration file for latexmkrc.
- diff.sh: A shell script to make the pdf indicating the difference from the previous version.

## Make a pdf for difference

### Requirement

- latexdiff-vc (included in texlive?)
- latexmkrc (included in texlive?)

### Usage

- Download a zip or tar.gz file from https://github.com/rellab/textemplate/releases/latest
- Extract zip or tar.gz file.
- Replace TeX style files (IEEEtran.bst, IEEEtran.cls) to your TeX style files.
- Rewrite manuscript.tex and ref.bib, and replace figure files in the fig directory.
- Make git repository:
  ```
  git init
  git add --all
  git commit -m "first commit"
  git remote add origin [your repository]
  git push -u origin master
  ```

### How to make a difference pdf

#### Linux/MacOSX

```
diff.sh file.tex tag1
```

example

```
./diff.sh manuscript.tex v1
```

#### Windows

?

### Notes

- Please do not change diff.sh and latexmkrc.
