---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ProfileCardProperty profileCardProperty = new ProfileCardProperty();
profileCardProperty.setDirectoryPropertyName("CustomAttribute1");
LinkedList<ProfileCardAnnotation> annotations = new LinkedList<ProfileCardAnnotation>();
ProfileCardAnnotation profileCardAnnotation = new ProfileCardAnnotation();
profileCardAnnotation.setDisplayName("Cost Center");
LinkedList<DisplayNameLocalization> localizations = new LinkedList<DisplayNameLocalization>();
DisplayNameLocalization displayNameLocalization = new DisplayNameLocalization();
displayNameLocalization.setLanguageTag("ru-RU");
displayNameLocalization.setDisplayName("центр затрат");
localizations.add(displayNameLocalization);
profileCardAnnotation.setLocalizations(localizations);
annotations.add(profileCardAnnotation);
profileCardProperty.setAnnotations(annotations);
ProfileCardProperty result = graphClient.admin().people().profileCardProperties().post(profileCardProperty);


```