---
title: "Permissions in Microsoft Graph Toolkit v4"
description: "An overview of how Microsoft Graph Toolkit manages permissions."
ms.localizationpriority: medium
author: gavinbarron
---

# Permissions in Microsoft Graph Toolkit v4

This article provides a summary of Microsoft Graph Toolkit manages permissions and works with incremental consent to reduce user friction.

## Incremental consent

The information in this article is applicable when using a provider that supports incremental consent, i.e. the [MSAL2 Provider](./providers/msal2.md). When using other providers all required permissions should be requested during the configuration of the provider or Microsoft Entra Application.

## Scope aware requests

Requests made to Microsoft Graph require an access token that contains certain permission claims, sometimes called scopes, to authorize the request. For the Microsoft Graph requests made by the Toolkit the user is required to have a token that contains one of a number of permissions. For example to query for a [list of users](/graph/api/user-list#permissions) the user must have one of these permissions: `User.ReadBasic.All`, `User.Read.All`, `User.ReadWrite.All`, `Directory.Read.All`, or `Directory.ReadWrite.All`.

The Toolkit attempted to help developers adhere to the principal of least privilege by only asking for the lowest possible permission for a give operation. This lead to cases where a component might request an additional permission when a previously consented permission could have been used, e.g. requesting `User.ReadBasic.All` when the user had previously consented to the `User.Read.All` permission to query for users. In version 4.0.0 the Toolkit now checks the list of accepted permissions against the list set of consented permissions for a user before making requests to Microsoft Graph. If any matching permission is found then the request is made, if no match is found an incremental consent is enabled the the user is prompted to consent to the lowest permission allowed for the given request.

This approach will allow developers to reduce the number of scopes that a user must consent to for their application to function correctly. Developers can use the [`scopes`](./providers/providers.md#permission-scopes) configuration to set the permissions for consent during sign in to reduce the number of times that incremental consent will be triggered during application use.

## Next steps

- Review the permissions for each [component](./overview.md#components).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt/issues).
