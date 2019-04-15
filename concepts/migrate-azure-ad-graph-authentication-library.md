---
title: "Review app authentication library changes | Microsoft Graph"
description: "Describes how to update authentication library use in order to migrate an app from Azure Active Directory (Azure AD) API apps to Microsoft Graph API."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Review app authentication library changes

Many apps use an authentication library to aquire and manage access tokens.

- Briefly introduce ADAL with link
- Briefly introduce MSAL with link

In the short term, you need only to make a few minor changes to continue using either approach.

## Updating ASAL 

However, ADAL will be retired at some point.  Eventually, you'll want to migrate to MSAL.

If your app currently uses ADAL, we recommend a two stage migration:

1.  Update the **resourceURL** to reflect Microsoft Graph:

    From: `https://graph.windows.net`  
    TO:  `https://graph.microsoft.com`

    Newly acquired tokens will have the same scopes in the new service, however, queries will target Microsoft Graph.  

    Once you've updated the **resourceURL** and verified functionality, release an interim update to get your users up and runnning.

1.  That done, begin work migrating your app to use MSAL, which is the supported library to use moving forward.

## Migrating to MSAL

MSAL provide multiple benefits over ASAL, including incremental consent, richer single sign-on experiences, support for personal Microsoft accounts, and so on.  

When you switch to MSAL, you'll need to make a few changes, including setting the **scopes** parameter in the token acquistion request:

``` csharp
var scopes = new string[] { "https://graph.microsoft.com/.default" };
```

This scopes permissions requests to those requested through the Azure Portal experience.  Because your users have previously accepted these permissions, that consent passes through to the updated app.  They do not need to provide additional consent.

See [Migrating ADAL to MSAL](https://aka.ms/adal-net-to-msal-net) for direct and extensive help with the process, including troubleshooting and help with common errors.

Once you've migrated to MSAL, you can request additional scopes dynamically, which requests incremental consent from the user.  

## Next Steps

- Learn [.NET client library](migrate-azure-ad-graph-client-libraries.md) differences between Azure AD Graph and Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.

