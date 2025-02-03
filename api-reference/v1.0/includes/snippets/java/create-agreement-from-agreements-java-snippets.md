---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Agreement agreement = new Agreement();
agreement.setDisplayName("Contoso ToU for guest users");
agreement.setIsViewingBeforeAcceptanceRequired(true);
LinkedList<AgreementFileLocalization> files = new LinkedList<AgreementFileLocalization>();
AgreementFileLocalization agreementFileLocalization = new AgreementFileLocalization();
agreementFileLocalization.setFileName("TOU.pdf");
agreementFileLocalization.setLanguage("en");
agreementFileLocalization.setIsDefault(true);
AgreementFileData fileData = new AgreementFileData();
byte[] data = Base64.getDecoder().decode("SGVsbG8gd29ybGQ=//truncated-binary");
fileData.setData(data);
agreementFileLocalization.setFileData(fileData);
files.add(agreementFileLocalization);
agreement.setFiles(files);
Agreement result = graphClient.identityGovernance().termsOfUse().agreements().post(agreement);


```