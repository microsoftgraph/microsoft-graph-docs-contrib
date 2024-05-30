---
title: "Permissions in Microsoft Graph Toolkit"
description: "Get an overview of how Microsoft Graph Toolkit manages permissions."
ms.localizationpriority: medium
author: gavinbarron
---

# Permissions in Microsoft Graph Toolkit

This article provides a summary of how Microsoft Graph Toolkit manages permissions and works with incremental consent to reduce user friction.

## Incremental consent

The information in this article is applicable when you use a provider that supports incremental consent; for example, the [MSAL2 Provider](./providers/msal2.md). When you use other providers, all required permissions should be requested during the configuration of the provider or Microsoft Entra application.

## Scope-aware requests

Requests made to Microsoft Graph require an access token that contains certain permission claims, sometimes called *scopes*, to authorize the request. For Microsoft Graph requests made by the toolkit, the user is required to have a token that contains one of a number of permissions. For example, to query for a [list of users](/graph/api/user-list#permissions), the user must have one of the following permissions: `User.ReadBasic.All`, `User.Read.All`, `User.ReadWrite.All`, `Directory.Read.All`, or `Directory.ReadWrite.All`.

The toolkit checks the list of permissions that can be be used for a given request against the list set of consented permissions for a user before making requests to Microsoft Graph. If any matching permission is found, the request is made. If no match is found and incremental consent is enabled, the user is prompted to consent to the lowest permission allowed for the given request.

This approach allows you to reduce the number of scopes that a user must consent to for your application to function correctly. You can use the [`scopes`](./providers/providers.md#permission-scopes) configuration to set the permissions for consent during sign in to reduce the number of times that incremental consent is triggered during application use.

## Next steps

- Review the permissions for each [component](./overview.md#components).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt/issues).
