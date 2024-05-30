---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessPackageResourceRequest accessPackageResourceRequest = new AccessPackageResourceRequest();
accessPackageResourceRequest.setRequestType(AccessPackageRequestType.AdminUpdate);
AccessPackageResource resource = new AccessPackageResource();
resource.setOriginId("e81d7f57-0840-45e1-894b-f505c1bdcc1f");
resource.setOriginSystem("AadApplication");
LinkedList<AccessPackageResourceAttribute> attributes = new LinkedList<AccessPackageResourceAttribute>();
AccessPackageResourceAttribute accessPackageResourceAttribute = new AccessPackageResourceAttribute();
AccessPackageUserDirectoryAttributeStore destination = new AccessPackageUserDirectoryAttributeStore();
destination.setOdataType("microsoft.graph.accessPackageUserDirectoryAttributeStore");
accessPackageResourceAttribute.setDestination(destination);
accessPackageResourceAttribute.setName("officeLocation");
AccessPackageResourceAttributeQuestion source = new AccessPackageResourceAttributeQuestion();
source.setOdataType("#microsoft.graph.accessPackageResourceAttributeQuestion");
AccessPackageTextInputQuestion question = new AccessPackageTextInputQuestion();
question.setOdataType("#microsoft.graph.accessPackageTextInputQuestion");
question.setSequence(1);
question.setIsRequired(true);
question.setIsAnswerEditable(true);
question.setText("What office do you work at?");
question.setIsSingleLineQuestion(true);
question.setRegexPattern("[a-zA-Z]+[a-zA-Z\s]*");
source.setQuestion(question);
accessPackageResourceAttribute.setSource(source);
attributes.add(accessPackageResourceAttribute);
AccessPackageResourceAttribute accessPackageResourceAttribute1 = new AccessPackageResourceAttribute();
AccessPackageUserDirectoryAttributeStore destination1 = new AccessPackageUserDirectoryAttributeStore();
destination1.setOdataType("microsoft.graph.accessPackageUserDirectoryAttributeStore");
accessPackageResourceAttribute1.setDestination(destination1);
accessPackageResourceAttribute1.setName("extension_e409fedc08ab4807a9eb53ebc0d6cc9f_Expense_CostCenter");
AccessPackageResourceAttributeQuestion source1 = new AccessPackageResourceAttributeQuestion();
source1.setOdataType("#microsoft.graph.accessPackageResourceAttributeQuestion");
AccessPackageTextInputQuestion question1 = new AccessPackageTextInputQuestion();
question1.setOdataType("#microsoft.graph.accessPackageTextInputQuestion");
question1.setIsRequired(false);
question1.setText("What is your cost center number?");
question1.setSequence(0);
question1.setIsSingleLineQuestion(true);
question1.setRegexPattern("[0-9]*");
source1.setQuestion(question1);
accessPackageResourceAttribute1.setSource(source1);
attributes.add(accessPackageResourceAttribute1);
resource.setAttributes(attributes);
accessPackageResourceRequest.setResource(resource);
AccessPackageCatalog catalog = new AccessPackageCatalog();
catalog.setId("beedadfe-01d5-4025-910b-84abb9369997");
accessPackageResourceRequest.setCatalog(catalog);
AccessPackageResourceRequest result = graphClient.identityGovernance().entitlementManagement().resourceRequests().post(accessPackageResourceRequest);


```