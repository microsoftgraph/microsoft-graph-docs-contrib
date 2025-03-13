---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IosVppEBook managedEBook = new IosVppEBook();
managedEBook.setOdataType("#microsoft.graph.iosVppEBook");
managedEBook.setDisplayName("Display Name value");
managedEBook.setDescription("Description value");
managedEBook.setPublisher("Publisher value");
OffsetDateTime publishedDateTime = OffsetDateTime.parse("2016-12-31T23:58:16.1180489-08:00");
managedEBook.setPublishedDateTime(publishedDateTime);
MimeContent largeCover = new MimeContent();
largeCover.setOdataType("microsoft.graph.mimeContent");
largeCover.setType("Type value");
byte[] value = Base64.getDecoder().decode("dmFsdWU=");
largeCover.setValue(value);
managedEBook.setLargeCover(largeCover);
managedEBook.setInformationUrl("https://example.com/informationUrl/");
managedEBook.setPrivacyInformationUrl("https://example.com/privacyInformationUrl/");
managedEBook.setVppTokenId(UUID.fromString("9148ac60-ac60-9148-60ac-489160ac4891"));
managedEBook.setAppleId("Apple Id value");
managedEBook.setVppOrganizationName("Vpp Organization Name value");
LinkedList<String> genres = new LinkedList<String>();
genres.add("Genres value");
managedEBook.setGenres(genres);
managedEBook.setLanguage("Language value");
managedEBook.setSeller("Seller value");
managedEBook.setTotalLicenseCount(1);
managedEBook.setUsedLicenseCount(0);
ManagedEBook result = graphClient.deviceAppManagement().managedEBooks().byManagedEBookId("{managedEBook-id}").patch(managedEBook);


```