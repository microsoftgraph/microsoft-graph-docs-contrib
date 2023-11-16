---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IosVppEBook managedEBook = new IosVppEBook();
managedEBook.displayName = "Display Name value";
managedEBook.description = "Description value";
managedEBook.publisher = "Publisher value";
managedEBook.publishedDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:16.1180489+00:00");
MimeContent largeCover = new MimeContent();
largeCover.type = "Type value";
largeCover.value = Base64.getDecoder().decode("dmFsdWU=");
managedEBook.largeCover = largeCover;
managedEBook.informationUrl = "https://example.com/informationUrl/";
managedEBook.privacyInformationUrl = "https://example.com/privacyInformationUrl/";
managedEBook.vppTokenId = UUID.fromString("9148ac60-ac60-9148-60ac-489160ac4891");
managedEBook.appleId = "Apple Id value";
managedEBook.vppOrganizationName = "Vpp Organization Name value";
LinkedList<String> genresList = new LinkedList<String>();
genresList.add("Genres value");
managedEBook.genres = genresList;
managedEBook.language = "Language value";
managedEBook.seller = "Seller value";
managedEBook.totalLicenseCount = 1;
managedEBook.usedLicenseCount = 0;

graphClient.deviceAppManagement().managedEBooks("{managedEBookId}")
	.buildRequest()
	.patch(managedEBook);

```