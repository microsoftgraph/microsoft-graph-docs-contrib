---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

VirtualEventPresenter virtualEventPresenter = new VirtualEventPresenter();
VirtualEventPresenterDetails presenterDetails = new VirtualEventPresenterDetails();
ItemBody bio = new ItemBody();
bio.setContent("Lead Product Manager of Contoso Sales department");
bio.setContentType(BodyType.Text);
presenterDetails.setBio(bio);
presenterDetails.setCompany("Contoso");
presenterDetails.setJobTitle("Product Manager");
presenterDetails.setLinkedInProfileWebUrl("https://linkedin.com/in/DianeDemoss");
presenterDetails.setPersonalSiteWebUrl("https://DianeDemoss.com");
virtualEventPresenter.setPresenterDetails(presenterDetails);
VirtualEventPresenter result = graphClient.solutions().virtualEvents().webinars().byVirtualEventWebinarId("{virtualEventWebinar-id}").presenters().byVirtualEventPresenterId("{virtualEventPresenter-id}").patch(virtualEventPresenter);


```