---
title: "Access national cloud deployments with the Microsoft Graph SDKs"
description: "Provides instructions for accessing national cloud deployments using the Microsoft Graph SDKs."
ms.localizationpriority: medium
author: jasonjoh
---

<!-- markdownlint-disable MD051 -->

# Access national cloud deployments with the Microsoft Graph SDKs

By default, the Microsoft Graph SDKs are configured to access data in the Microsoft Graph global service, using the `https://graph.microsoft.com` root URL to access the Microsoft Graph REST API. Developers can override this configuration to connect to [Microsoft Graph national cloud deployments](../deployments.md).

## Prerequisites

You will need the following information to configure a Microsoft Graph SDK to connect to a national cloud deployment.

- Application registration details, such as client ID, tenant ID, and client secret or certificate. The application registration MUST be created in the Azure portal that corresponds to the national cloud deployment. See [App registration and token service root endpoints](../deployments.md#app-registration-and-token-service-root-endpoints) for details.
- The token endpoint for the national cloud deployment.
- The Microsoft Graph service root endpoint for the national cloud deployment. See [Microsoft Graph and Graph Explorer service root endpoints](../deployments.md#microsoft-graph-and-graph-explorer-service-root-endpoints) for a list of endpoints.

## Configure the SDK

In order to connect to a national cloud deployment, you must configure your [authentication provider](choose-authentication-providers.md) to connect to the correct token service endpoint. Then you must configure the SDK client to connect to the correct Microsoft Graph service root endpoint.

### Permission scopes

Any permission scope value (including the `.default` scope) that contains the Microsoft Graph domain MUST use the domain of the Microsoft Graph service root endpoint for the national cloud deployment. The shortened permission scope names, such as `User.Read` or `Mail.Send`, are also valid.

- For [incremental or dynamic consent](/azure/active-directory/develop/consent-types-developer#incremental-and-dynamic-user-consent), `User.Read` and `https://graph.microsoft.us/User.Read` are equivalent for the US Government L4 national cloud.
- For [statically defined permissions](/azure/active-directory/develop/consent-types-developer#request-the-permissions-in-the-app-registration-portal), or if you are using [client credentials flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow) for app-only permissions, `https://graph.microsoft.us/.default` is the correct `.default` scope value.

## Examples

The following example configures an [Interactive authentication provider](choose-authentication-providers.md#interactive-provider) with the Microsoft Graph SDK to connect to the Microsoft Graph for US Government L4 national cloud.

### [C#](#tab/csharp)

:::code language="csharp" source="./snippets/dotnet/src/SdkSnippets/Snippets/NationalClouds.cs" id="NationalCloudSnippet":::

### [Go](#tab/go)

:::code language="go" source="./snippets/go/src/snippets/national_clouds.go" id="ImportSnippet":::

:::code language="go" source="./snippets/go/src/snippets/national_clouds.go" id="NationalCloudSnippet":::

### [Java](#tab/java)

:::code language="java" source="./snippets/java/app/src/main/java/snippets/NationalClouds.java" id="NationalCloudSnippet":::

### [PowerShell](#tab/powershell)

```powershell
Connect-MgGraph -Environment USGov -ClientId 'YOUR_CLIENT_ID' `
  -TenantId 'YOUR_TENANT_ID' -Scopes 'https://graph.microsoft.us/.default'
```

### [Python](#tab/python)

:::code language="python" source="./snippets/python/src/snippets/national_clouds.py" id="NationalCloudSnippet":::

### [TypeScript](#tab/typescript)

:::code language="csharp" source="./snippets/typescript/src/snippets/nationalClouds.ts" id="NationalCloudSnippet":::

---
