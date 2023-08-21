---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalUsersSelfServiceSignUpEventsFlow authenticationEventsFlow = new ExternalUsersSelfServiceSignUpEventsFlow();
OnAttributeCollectionExternalUsersSelfServiceSignUp onAttributeCollection = new OnAttributeCollectionExternalUsersSelfServiceSignUp();
AuthenticationAttributeCollectionPage attributeCollectionPage = new AuthenticationAttributeCollectionPage();
attributeCollectionPage.customStringsFileId = null;
LinkedList<AuthenticationAttributeCollectionPageViewConfiguration> viewsList = new LinkedList<AuthenticationAttributeCollectionPageViewConfiguration>();
AuthenticationAttributeCollectionPageViewConfiguration views = new AuthenticationAttributeCollectionPageViewConfiguration();
views.title = null;
views.description = null;
LinkedList<AuthenticationAttributeCollectionInputConfiguration> inputsList = new LinkedList<AuthenticationAttributeCollectionInputConfiguration>();
AuthenticationAttributeCollectionInputConfiguration inputs = new AuthenticationAttributeCollectionInputConfiguration();
inputs.attribute = "email";
inputs.label = "Email Address";
inputs.inputType = AuthenticationAttributeCollectionInputType.TEXT;
inputs.defaultValue = null;
inputs.hidden = true;
inputs.editable = false;
inputs.writeToDirectory = true;
inputs.required = true;
inputs.validationRegEx = "^[a-zA-Z0-9.!#$%&amp;&#8217;'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:.[a-zA-Z0-9-]+)*$";
LinkedList<AuthenticationAttributeCollectionOptionConfiguration> optionsList = new LinkedList<AuthenticationAttributeCollectionOptionConfiguration>();
inputs.options = optionsList;
inputsList.add(inputs);
AuthenticationAttributeCollectionInputConfiguration inputs1 = new AuthenticationAttributeCollectionInputConfiguration();
inputs1.attribute = "displayName";
inputs1.label = "Display Name";
inputs1.inputType = AuthenticationAttributeCollectionInputType.TEXT;
inputs1.defaultValue = null;
inputs1.hidden = false;
inputs1.editable = true;
inputs1.writeToDirectory = true;
inputs1.required = false;
inputs1.validationRegEx = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$";
LinkedList<AuthenticationAttributeCollectionOptionConfiguration> optionsList1 = new LinkedList<AuthenticationAttributeCollectionOptionConfiguration>();
inputs1.options = optionsList1;
inputsList.add(inputs1);
AuthenticationAttributeCollectionInputConfiguration inputs2 = new AuthenticationAttributeCollectionInputConfiguration();
inputs2.attribute = "city";
inputs2.label = "City";
inputs2.inputType = AuthenticationAttributeCollectionInputType.TEXT;
inputs2.defaultValue = null;
inputs2.hidden = false;
inputs2.editable = true;
inputs2.writeToDirectory = true;
inputs2.required = false;
inputs2.validationRegEx = "^[a-zA-Z_][0-9a-zA-Z_ ]*[0-9a-zA-Z_]+$";
LinkedList<AuthenticationAttributeCollectionOptionConfiguration> optionsList2 = new LinkedList<AuthenticationAttributeCollectionOptionConfiguration>();
inputs2.options = optionsList2;
inputsList.add(inputs2);
AuthenticationAttributeCollectionInputConfiguration inputs3 = new AuthenticationAttributeCollectionInputConfiguration();
inputs3.attribute = "extension_6ea3bc85aec24b1c92ff4a117afb6621_Favoritecolor";
inputs3.label = "Favorite color";
inputs3.inputType = AuthenticationAttributeCollectionInputType.TEXT;
inputs3.defaultValue = null;
inputs3.hidden = false;
inputs3.editable = true;
inputs3.writeToDirectory = true;
inputs3.required = false;
inputs3.validationRegEx = "^.*";
LinkedList<AuthenticationAttributeCollectionOptionConfiguration> optionsList3 = new LinkedList<AuthenticationAttributeCollectionOptionConfiguration>();
inputs3.options = optionsList3;
inputsList.add(inputs3);
views.inputs = inputsList;
viewsList.add(views);
attributeCollectionPage.views = viewsList;
onAttributeCollection.attributeCollectionPage = attributeCollectionPage;
authenticationEventsFlow.onAttributeCollection = onAttributeCollection;

graphClient.identity().authenticationEventsFlows("0313cc37-d421-421d-857b-87804d61e33e")
	.buildRequest()
	.patch(authenticationEventsFlow);

```