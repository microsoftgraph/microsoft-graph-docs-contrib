---
title: "Azure Active Directory (Azure AD) Graph app migration checklist"
description: "Use this checklist to migrate your apps from Azure Active Directory (Azure AD) Graph to Microsoft Graph."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.topic: quickstart
ms.localizationpriority: medium
ms.subservice: entra-applications
ms.date: 01/12/2024
#Customer intent: As a developer, what are some of the things I need to consider when migrating my app from Azure AD Graph to Microsoft Graph?
---

# Azure AD Graph app migration planning checklist

Use the following checklist to plan your migration from Azure Active Directory (Azure AD) Graph to Microsoft Graph.

## Step 1: Review the differences between the APIs

In many respects, Microsoft Graph is similar to the earlier Azure AD Graph. In many cases, change the endpoint, version, and resource name in your code, and everything should continue to work.

Nonetheless, there are differences. Certain resources, properties, methods, and core capabilities changed.

Specifically, look for differences in the following areas:

- [Request call syntax](migrate-azure-ad-graph-request-differences.md) between the two services
- [Feature differences](migrate-azure-ad-graph-feature-differences.md), such as directory extensions, batching, differential queries, and so on
- [Entity resource names](migrate-azure-ad-graph-resource-differences.md) and their types
- [Properties](migrate-azure-ad-graph-property-differences.md) of request and response objects
- [Methods](migrate-azure-ad-graph-method-differences.md), including parameters and types
- [Permissions](migrate-azure-ad-graph-permissions-differences.md)

## Step 2: Examine API use

[Examine the APIs](migrate-azure-ad-graph-audit-api-use.md) used by your app, the permissions they require, and compare to the list of known differences.  

For production, verify that the APIs your app needs are generally available in Microsoft Graph v1.0 and inspect whether they work like in Azure AD Graph or differently.

For testing, use [Graph Explorer](https://aka.ms/ge) to experiment with API calls and to develop new approaches. For best results, sign in using the credentials of a test user in a test tenant so that you verify the API behavior in a realistic environment.

## Step 3: Review app details

- [App registration](migrate-azure-ad-graph-app-registration.md) and consent changes.
- Token acquisition and [authentication libraries](migrate-azure-ad-graph-authentication-library.md).
- For .NET applications, use of [client libraries](migrate-azure-ad-graph-client-libraries.md).

## Step 4: Deploy, test, and extend your app

Before updating your app for production, ensure you test thoroughly and stage your rollout to your customer audience.

After switching to Microsoft Graph, you unlock many more datasets and features that are defined in [Major services and features in Microsoft Graph](./overview-major-services.md).

## Next step

> [!div class="nextstepaction"]
> [Learn about the request call syntax](migrate-azure-ad-graph-request-differences.md)
