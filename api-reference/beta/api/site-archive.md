---
author: neelporiya
title: Archive site
description: Archive a user's site.
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: apiPageType
---
# Archive site 

Namespace: microsoft.graph

Archive a user's [site](../resources/site.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- this will be generated automatically -->

In delegated scenarios, the signed-in user must also be assigned one of the following supported [Microsoft Entra role](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json) for this operation:

* SharePoint Administrator
* Global Administrator

## HTTP request

```http
POST /sites/{site-id}/archive
```

## Request body

Don't supply a request body for this method.


## Response 

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

Here's and example that shows how to archive a site. 

### Request


# [HTTP](#tab/http)

```http
POST https://graph.microsoft.com/beta/sites/{site-id}/archive
```

---

### Response

If successful, it returns the following JSON response. 


```http
HTTP/1.1 204 No Content
```
