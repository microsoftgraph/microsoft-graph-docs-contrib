---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AgreementFileLocalization agreementFileLocalization = new AgreementFileLocalization();
agreementFileLocalization.setFileName("Contoso ToU for guest users (French)");
agreementFileLocalization.setLanguage("fr-FR");
agreementFileLocalization.setIsDefault(false);
agreementFileLocalization.setIsMajorVersion(false);
agreementFileLocalization.setDisplayName("Contoso ToU for guest users (French)");
AgreementFileData fileData = new AgreementFileData();
byte[] data = Base64.getDecoder().decode("base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data");
fileData.setData(data);
agreementFileLocalization.setFileData(fileData);
AgreementFileLocalization result = graphClient.identityGovernance().termsOfUse().agreements().byAgreementId("{agreement-id}").files().post(agreementFileLocalization);


```