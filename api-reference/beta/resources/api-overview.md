---
title: Introduction to Microsoft Viva Learning
ms.author: maldas
author: malabikaroy
manager: absri
ms.reviewer: shirana
ms.date: 11/02/2021
audience: enabler, admin
ms.topic: landing-page
ms.custom: intro-hub-or-landing
search.appverid: MET150
ms.collection: 
    - enabler-strategic
    - m365initiative-viva-learning
ms.service: viva
ms.subservice: viva-learning
ms.localizationpriority: medium
description: Learn how to find resources for Microsoft Viva Learning.
---

# Graph APIs

## Overview  

### Viva Learning

Viva Learning is a learning platform with the following capabilities -  

Learning in the Flow of Work - Bring learning to the tools and platforms where users already spend their time

Simplified Learning - Aggregate learning content and tools from different sources in one central hub

Personalized and Relevant - Find the right content and develop new capabilities with personalized recommendations and search

## Viva Learning Graph APIs  

Viva Learning Graph APIs (Application Programming Interfaces) enable any partner/ customer to seamlessly integrate their content & learner records (user assignments & completion records) from their LMS/ learning provider with Viva Learning.

To enable these scenarios, the below Viva Learning APIs are supported -

1. Content Sync APIs – These APIs help sync in the learning content for a tenant within Viva Learning.

2. Learning Record Sync (LRS) APIs – These APIs help sync in the assignment and completion records for learners.  

    a. Assignments sync APIs - These APIs help sync in the learner’s assignments within Viva Learning.

    b. Completion sync APIs - These APIs help sync in the learner’s completed records within Viva Learning.

## Scenarios supported  

![An image showing the APIs supported by Viva Learning](images/api-details.png)
Graphical user interface, text, application, chat or text message

Description automatically generated

## How integrations work

The below diagram helps explain how the Viva Learning integrations through Out of Box Integrations (Pull model) and through Graph APIs (Push model) work -  

![An image showing Viva Learning integrations through Out of Box Integrations (Pull model) and through Graph APIs (Push model) work.](images/learning-source-integrations.png)

Once the content metadata and learner assignment & completion records are synchronized into Viva Learning, they appear on Viva Learning (Content appears on Home page under Browse courses – Providers section; Assignments and Completed courses appear on My Learning page under Assigned to you & Completed sections respectively.

## Content sync APIs

This document focuses on the Content sync APIs.

### Key Terms

LMS – entity that stores learning content catalogs and learner’s assignment records eg SuccessFactors

Provider- entity which is trying to integrate with Viva Learning App. Eg ISV, SI Partners, Linkedin Hub  
Customer – An organization with paid Viva Learning or Viva Suite licenses seeking to connect their Viva Learning instance with one or more existing learning sources  

externalId – Identifier of a learning content record in Provider’s system.  

registrationId – Identifier assigned by Viva Learning on Provider registration request for a tenant  

## Prerequisites

Refer to these articles to learn more about Microsoft Graph:  

1. Microsoft Graph Fundamentals - Learn <https://docs.microsoft.com/learn/paths/m365-msgraph-fundamentals/> 

2. Calling the Microsoft Graph API - Microsoft Graph <https://docs.microsoft.com/graph/call-api>

3. Authentication and authorization basics for Microsoft Graph - Microsoft Graph <https://docs.microsoft.com/graph/auth/auth-concepts >

4. Other resources are also available at Microsoft Graph documentation]  <https://docs.microsoft.com/graph/>

## Scenarios supported

1. Providers will be able to register with their display name, square logo url in dark mode/light mode (to be displayed in Learning Content Card), long logo url in dark/light mode to be displayed in Details page required for the content to show up for the provider in Viva Learning. The resultant id can be used to make the subsequent calls for content ingestion.  

2. Providers will be able to enable/disable the registered provider, update the display name for provider and logo URL’s.  

3. Retrieve provider details in Viva Learning for registrationId.  

4. Retrieve list of registrations in Viva Learning for the provider using Graph API  

5. Providers will be able to delete the registration for the tenant.  

6. Providers will be able to ingest their learning content through the UPSERT API exposed via. PATCH Method to make this content available within Viva Learning for consumption.  

7. Providers will be able to read the ingested content through the GET API for the tenant for the Provider registered with registrationId.  

8. This content would be available for Search after given SLA. (24 hours)  

9. Providers will be able to retrieve the properties of a learning content object

10. Providers will be able to delete the ingested content through the DELETE API.  

Note: For every successful API invocation Provider needs to generate Token using resource values as given below

Resource for Token acquisition:  

a. Token acquisition needs to be done for: <https://graph.microsoft.com/>  

b. Scope: : <https://graph.microsoft.com/.default>  

## Endpoints

| APIs:  | HttpMethod: |Endpoint: |
|:-----|:-----|:-----|
|New Provider Registration   | POST |<https://graph.microsoft.com/beta/employeeExperience/LearningProviders> |
|Update Provider registration details    | PATCH  |<https://graph.microsoft.com/beta/employeeExperience/LearningProviders/{id>}  |
|Retrieve Provider Registration     | GET   |<https://graph.microsoft.com/beta/employeeExperience/LearningProviders/{id>}   |
|Retrieve all Providers registered via. API      | GET   |<https://graph.microsoft.com/beta/employeeExperience/LearningProviders>    |
|Delete Provider registration/De-register the provider       | DELETE   |<https://graph.microsoft.com/beta/employeeExperience/LearningProviders/{id>}    |
|Upsert Learning content      | PATCH   |<https://graph.microsoft.com/beta/employeeExperience/learningProviders/{registrationId}/learningContents(externalId=’{externalId>}’}     |
|Retrieve Learning content      | GET   |<https://graph.microsoft.com/beta/employeeExperience/learningProviders/{registrationId}/learningContents(externalId=’{externalId>}’}     |
|Retrieve Learning content      | GET   |<https://graph.microsoft.com/beta/employeeExperience/learningProviders/{registrationId}/learningContents>?$skip={skip}&$top={top)     |
|Delete Learning content     | DELETE   |<https://graph.microsoft.com/beta/employeeExperience/learningProviders/{registrationId}/learningContents(externalId=’{externalId>}’}     |

Follow these steps to onboard Viva Learning as mentioned below. Steps are marked in the above Flow Diagram for better understanding.

## 1.	3rd party app creation 
 The one-time step for App creation is as mentioned below

A.	Go to Enterprise Applications in Azure.
B.	Create a multi-tenant app in Azure. Create an Azure AD app and service principal in the portal - Microsoft identity platform | Microsoft Docs
C.	Add re-direct URI for the application.
D.	From Certificates & secrets blade, upload client certificate. Note: The certificate would be used to Acquire app-only token.
Note: As part of Registration, we are going to Allow list your AppId for the tenant. To enable content ingestion from Partner for the tenant. You should provide your App Id in the form https://aka.ms/contentsync


## 2.	Implement 3rd party app provisioning in customer’s tenant Azure AD 
A.	Expose Viva Learning Admin setting in Provider client interface
B.	Implement admin consent flow to get the Provider app provisioned in the customer tenant active directory.
To trigger the admin consent flow, launch the following url. 
Url formation required: https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id={ClientAppId}&response_type=code&scope=https://graph.microsoft.com/.default 
 
 
For ex: 
https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id=bca1a7df-eaa5-4d78-b0fb-0a43ec711937&response_type=code&scope=https://graph.microsoft.com/.default 

Refer FAQ for any failure. 
  
Accept should trigger the API  

## 3.	IMPLEMENT REGISTER PROVIDER API INTEGRATION 
                   Diagram –1: Register Provider

 

i.	Implement admin consent re-direct URI handler. This handler would get the tenant from the successful response of admin consent URL. 
Refer to Process Code Method of OnboardingController.cs in Azure Samples. GitHub link below in step ii.

ii.	Acquire Token with delegated permissions, invoke register provider API with following information.
-	Display Name
-	Square Logo Url for Dark Theme
-	Long Logo Url for Dark Theme
-	Square Logo Url for Light theme
-	Long Logo Url for Light Theme
-	AppId from Token ( not a request Parameter)
-	TenantId from token ( not a request Parameter)
-	Isenabled
For successful response- 200, registrationId for tenant is returned in response. This registrationId needs to be stored at Provider end along with tenant id. And needs to be used in consequent calls.
RECOMMENDATION ON ACQUIRING TOKEN FLOW. Multi tenant client_credential use · AzureAD/microsoft-authentication-library-for-dotnet Wiki · GitHub
## 4.	IMPLEMENT REGISTER LEARNING CONTENT API INTEGRATION                
  			Diagram – 2: Push Learning Content
          
i.	Implement a recurring application process to generate token and push learning content for the enabled tenants with application permissions.
ii.	Use app-only token and registrationId created in step C ii.  for ingesting the learning content in Viva Learning. 


FAQ: 
1.	Learning Content SLA: 24 hours 
    The learning content ingested would be available in Viva Learning via. search only after 24 hours of SLA.

    Due to the current caching optimization at Viva Learning, it might take (only in few scenarios) up to 24 hours for the content to be available under Providers tab     carousel. Though the content would be available for search after given SLA (24  hours currently).

2.	Throttle limit of Graph API 
SLA mentioned in point 3 is subjected to Provider’s compliance with the throttle limit.
Here are the throttle limits for Content sync Graph APIs. 
    - 1 request per second. 
    - Block limit : 500 requests in 10 mins

3.	 Deleting Provider API will disable the provider and will stop rendering contents from that provider on the Viva learning App. The content for the disabled provider will be deleted within 30 days.

4.	When Registration API is called there is a unique registration id for the tenant. If Provider needs to register 5 different tenants, then they need to call the registration API 5 times.

5. The Get APIs are for validation of the ingested data by the provider and not meant for reporting needs of the tenant.

6. Total number of Records for Content Ingestion capacity is 500K based on current scale.

7. We support one Provider registration per tenant.

8. The Supported Languages –Locale tags for the Content details within Viva Learning is as mentioned below.
az-Latn-AZ,bg-BG,bn-IN,ca-ES,cs-CZ,da-DK,de-DE,el-GR,en-GB,es-ES,es-MX,et-EE,eu-ES,fi-FI,fil-PH,fr-CA,fr-FR,gl-ES,gu-IN,hi-IN,hr-HR,hu-HU,id-ID,is-IS,it-IT,ja-JP,ka-GE,kk-KZ,kn-IN,ko-KR,lt-LT,lv-LV,mk-MK,ml-IN,mr-IN,nb-NO,nl-NL,nn-NO,pl-PL,pt-BR,pt-PT,ro-RO,ru-RU,sk-SK,sl-SI,sq-AL,sr-Latn-RS,sv-SE,ta-IN,te-IN,th-TH,tr-TR,uk-UA,vi-VN,zh-CN,zh-TW
