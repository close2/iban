# Changelog

## 0.2.1
- Fix special character bug.  
  We need to first remove special characters and only then verify the min length.

## 0.2.0
- Sync specifications to iban.js specifications
- restrict sdk to >=2

## 0.1.2

Thanks to https://github.com/yapcwed
- Switch to `pedantic` linter rules
- Fix analyzer issues

## 0.1.1

Thanks to https://github.com/haarts
- do not allow ibans shorter than 2 characters (crashed on 0 characters)
- fix formatting

## 0.1.0

- dart 2 support

## 0.0.1

- Initial version, created by Stagehand
