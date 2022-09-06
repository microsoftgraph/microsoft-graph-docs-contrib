---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AgreementFileLocalization agreementFileLocalization = new AgreementFileLocalization();
agreementFileLocalization.fileName = "Contoso ToU for guest users (French)";
agreementFileLocalization.language = "fr-FR";
agreementFileLocalization.isDefault = false;
agreementFileLocalization.isMajorVersion = false;
agreementFileLocalization.displayName = "Contoso ToU for guest users (French)";
AgreementFileData fileData = new AgreementFileData();
fileData.data = Base64.getDecoder().decode("base64JVBERi0xLjUKJb/3ov4KNCAwIG9iago8PCAvTGluZWFyaX//truncated-binary-data");
agreementFileLocalization.fileData = fileData;

graphClient.identityGovernance().termsOfUse().agreements("94410bbf-3d3e-4683-8149-f034e55c39dd").files()
	.buildRequest()
	.post(agreementFileLocalization);

```