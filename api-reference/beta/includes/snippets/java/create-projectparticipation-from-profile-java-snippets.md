---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ProjectParticipation projectParticipation = new ProjectParticipation();
LinkedList<String> categories = new LinkedList<String>();
categories.add("Branding");
projectParticipation.setCategories(categories);
CompanyDetail client = new CompanyDetail();
client.setDisplayName("Contoso Ltd.");
client.setDepartment("Corporate Marketing");
client.setWebUrl("https://www.contoso.com");
projectParticipation.setClient(client);
projectParticipation.setDisplayName("Contoso Re-branding Project");
PositionDetail detail = new PositionDetail();
CompanyDetail company = new CompanyDetail();
company.setDisplayName("Adventureworks Inc.");
company.setDepartment("Consulting");
company.setWebUrl("https://adventureworks.com");
detail.setCompany(company);
detail.setDescription("Rebranding of Contoso Ltd.");
detail.setJobTitle("Lead PM Rebranding");
detail.setRole("project management");
detail.setSummary("A 6 month project to help Contoso rebrand after they were divested from a parent organization.");
projectParticipation.setDetail(detail);
ProjectParticipation result = graphClient.me().profile().projects().post(projectParticipation);


```