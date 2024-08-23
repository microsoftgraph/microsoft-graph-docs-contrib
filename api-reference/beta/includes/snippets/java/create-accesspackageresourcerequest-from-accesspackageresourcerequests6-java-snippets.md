---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setCatalogId("26ac0c0a-08bc-4a7b-a313-839f58044ba5");
accessPackageResourceRequest.setRequestType("AdminAdd");
accessPackageResourceRequest.setJustification("");
AccessPackageResource accessPackageResource = new AccessPackageResource();
accessPackageResource.setDisplayName("Faculty cafeteria ordering");
accessPackageResource.setDescription("Example application");
accessPackageResource.setUrl("https://myapps.microsoft.com/example.com/signin/Faculty%20cafeteria%20ordering/f1e3b407-942d-4934-9a3f-cef1975cb988/");
accessPackageResource.setResourceType("Application");
accessPackageResource.setOriginId("2f1099a6-d4fc-4cc9-a0ef-ddd3f1bf0b7e");
accessPackageResource.setOriginSystem("AadApplication");
LinkedList<AccessPackageResourceAttribute> attributes = new LinkedList<AccessPackageResourceAttribute>();
AccessPackageResourceAttribute accessPackageResourceAttribute = new AccessPackageResourceAttribute();
accessPackageResourceAttribute.setAttributeName("extension_2b676109c7c74ae2b41549205f1947ed_personalTitle");
accessPackageResourceAttribute.setIsEditable(true);
accessPackageResourceAttribute.setIsPersistedOnAssignmentRemoval(true);
AccessPackageResourceAttributeQuestion attributeSource = new AccessPackageResourceAttributeQuestion();
attributeSource.setOdataType("#microsoft.graph.accessPackageResourceAttributeQuestion");
AccessPackageTextInputQuestion question = new AccessPackageTextInputQuestion();
question.setOdataType("#microsoft.graph.accessPackageTextInputQuestion");
question.setIsRequired(false);
question.setSequence(0);
question.setIsSingleLineQuestion(true);
AccessPackageLocalizedContent text = new AccessPackageLocalizedContent();
text.setDefaultText("Title");
LinkedList<AccessPackageLocalizedText> localizedTexts = new LinkedList<AccessPackageLocalizedText>();
text.setLocalizedTexts(localizedTexts);
question.setText(text);
attributeSource.setQuestion(question);
accessPackageResourceAttribute.setAttributeSource(attributeSource);
AccessPackageUserDirectoryAttributeStore attributeDestination = new AccessPackageUserDirectoryAttributeStore();
attributeDestination.setOdataType("#microsoft.graph.accessPackageUserDirectoryAttributeStore");
accessPackageResourceAttribute.setAttributeDestination(attributeDestination);
attributes.add(accessPackageResourceAttribute);
accessPackageResource.setAttributes(attributes);
accessPackageResourceRequest.setAccessPackageResource(accessPackageResource);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().accessPackageResourceRequests().post(accessPackageResourceRequest);


```