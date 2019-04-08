---
title: "Request differences between Azure AD Graph and Microsoft Graph | Microsoft Graph"
description: "Describes how Microsoft Graph requests differ from Azure AD requests, which helps migrate apps to the newer service.."
author: "lleonard-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
---

# Request differences between Azure AD Graph and Microsoft Graph

The Microsoft Graph API and the Azure AD Graph API are both REST APIs and they each support ODATA conventions for query parameters; however, the syntax varies between each API.

The variations are minor and should be quick to implement.

> Note: If you're using the Azure AD Graph .NET library, see [xxx]() for specific strategies and assistance.

The following table highlights the main differences between calling each service:

|| Azure AD Graph | Microsoft Graph |
|---|---|---|
|Request<br>syntax| `https://graph.windows.net/{tenant_id}/` <br> `   {resource}?{version}&query-parameters` | `https://graph.microsoft.com/`<br>
`    {version}/{resource}?query-parameters`|
|Service URL|`https://graph.windows.net/` | `https://graph.microsoft.com/` <br><br> National clouds have unique base URLs; see [National cloud endpoints](https://docs.microsoft.com/graph/deployments) for details.|
|_{tenant_id}_|ID of the tenant targeted by the request.|For Microsoft Graph, the tenant ID is inferred from the access token and not is therefore optional in the request.<br><br>When specified, it appears between the version and the resource in the request URL.<br><br>As with Azure AD Graph, all enterprise requests target a tenant.<br>Also called an organization ID or directory object ID.|
|_{version}_|Release version of Azure ID Graph targeted by the request.<br><br>Generally expressed as a required query parameter.|Release version of the Microsoft Graph targeted by the request.<br><br>Specified in the request as part of the path to the endpoint.<br><br>Required just after the service URL.|
|_{resource}_|Path to the resource (entity), such as a user or group, targeted by the request.|Path to the resource (entity), such as a user or group, targeted by the request.|
|_{query-parameters}_|Optional set of parameters and values designed to customize the response.|Optional set of parameters and values designed to customize the response.<br><br>Microsoft Graph supports the same query parameters supported by Azure AD Graph.|

## Example request comparison

Suppose you want a list of all users with names beginning with "Dan".

In Auzure AD Graph, you might use this request:

`https://graph.windows.net/contoso.com/users?api-version=1.6&\$filter=startswith(givenName,'Dan')`

This request:

- Targets version 1.6 of Azure AD Graph.  
- Specifies `contoso.com` as the tenant ID.  
- Calls the users resource.  
- Uses the `$filter` query parameter to limit the response to given names that begin with `Dan`.  
 
Results will include users with names like Daniel, Danforth, Danielle, so on.

A similar request for Microsoft Graph would be:

`https://graph.microsoft.com/v1.0/users?\$filter=startswith(givenName,'Dan')`

Here:

- The version is `v1.0`.  
- The tenant ID is inferred from the access token (not shown).  
- The resource and query parameter are the same as the Azure AD query.  

While not all requests will be as easy to convert, many will.  To learn more, see [resource type differences](migrate-azure-ad-graph-resource-differences.md). 

## Next Steps

- Learn about [resource type differences](migrate-azure-ad-graph-resource-differences.md) between Azure AD Graph and Microsoft Graph.
- Explore [Microsoft Graph](/graph/overview) concepts and practices.
- Use [Graph Explorer](https://aka.ms/ge) to experiment with Microsoft Graph.
