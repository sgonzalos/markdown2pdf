pandoc.exe --include-in-header=%~dp0CSS.css -s %1 --output=%~dpn1.html

"C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf" %~dpn1.html %~dpn1.pdf

pause