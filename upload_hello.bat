@echo off
REM Upload hello.txt to 3 S3 buckets automatically

set "CUR_DIR=%CD%"
set BUCKETS=brogan-terraform-bucket-111111 brogan-terraform-bucket-222222 brogan-terraform-bucket-333333

for %%B in (%BUCKETS%) do (
    echo Uploading hello.txt to %%B ...
    aws s3api put-object --bucket %%B --key hello.txt --body "%CUR_DIR%\hello.txt"
)

echo.
echo All uploads complete.
pause
