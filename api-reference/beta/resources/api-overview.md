---
title: Introduction to Microsoft Viva Learning
ms.author: malabikaroy
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

Learning in the Flow of Work​ - Bring learning to the tools and platforms where users already spend their time​

Simplified Learning​ - Aggregate learning content and tools from different sources in one central hub​

Personalized and Relevant​ - Find the right content and develop new capabilities with personalized recommendations and search​

## Viva Learning Graph APIs  

Viva Learning Graph APIs (Application Programming Interfaces) enable any partner/ customer to seamlessly integrate their content & learner records (user assignments & completion records) from their LMS/ learning provider with Viva Learning.

To enable these scenarios, the below Viva Learning APIs are supported -

1. Content Sync APIs – These APIs help sync in the learning content for a tenant within Viva Learning.

2. Learning Record Sync (LRS) APIs – These APIs help sync in the assignment and completion records for learners.  

a. Assignments sync APIs - These APIs help sync in the learner’s assignments within Viva Learning.

b. Completion sync APIs - These APIs help sync in the learner’s completed records within Viva Learning.

## Scenarios supported  

Picture1.png
Graphical user interface, text, application, chat or text message

Description automatically generated

## How integrations work

The below diagram helps explain how the Viva Learning integrations through Out of Box Integrations (Pull model) and through Graph APIs (Push model) work -  

Picture2.png

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

1. Microsoft Graph Fundamentals - Learn (https://docs.microsoft.com/en-us/learn/paths/m365-msgraph-fundamentals/)  

2. Calling the Microsoft Graph API - Microsoft Graph (https://docs.microsoft.com/en-us/graph/call-api)

3. Authentication and authorization basics for Microsoft Graph - Microsoft Graph (https://docs.microsoft.com/en-us/graph/auth/auth-concepts )

4. Other resources are also available at Microsoft Graph documentation]  (https://docs.microsoft.com/en-us/graph/)

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

a. Token acquisition needs to be done for: <https://graph>. microsoft.com/  

b. Scope: : <https://graph>. microsoft.com/.default  

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
