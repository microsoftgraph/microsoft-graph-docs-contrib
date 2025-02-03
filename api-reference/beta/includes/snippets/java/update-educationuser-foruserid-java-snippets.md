---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationUser educationUser = new EducationUser();
LinkedList<RelatedContact> relatedContacts = new LinkedList<RelatedContact>();
RelatedContact relatedContact = new RelatedContact();
relatedContact.setDisplayName("Father Time");
relatedContact.setEmailAddress("father@time.com");
relatedContact.setMobilePhone("4251231234");
relatedContact.setRelationship(ContactRelationship.Guardian);
relatedContact.setAccessConsent(true);
relatedContacts.add(relatedContact);
RelatedContact relatedContact1 = new RelatedContact();
relatedContact1.setDisplayName("Mother Nature");
relatedContact1.setEmailAddress("mother@nature.co.uk");
relatedContact1.setMobilePhone("3251231234");
relatedContact1.setRelationship(ContactRelationship.Parent);
relatedContact1.setAccessConsent(true);
relatedContacts.add(relatedContact1);
educationUser.setRelatedContacts(relatedContacts);
EducationUser result = graphClient.education().users().byEducationUserId("{educationUser-id}").patch(educationUser);


```