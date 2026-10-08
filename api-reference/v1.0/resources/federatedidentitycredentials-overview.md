---
title: "Overview of federated identity credentials in Microsoft Entra ID"
description: "Federated identity credentials allow you to access Microsoft Entra and Microsoft Graph resources without having to manage secrets. Federated identity credentials are part of workload identity federation in Microsoft Entra ID."
author: "nickludwig"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: conceptualPageType
ms.date: 08/03/2022
---

# Overview of federated identity credentials in Microsoft Entra ID

Namespace: microsoft.graph


Traditionally, developers use certificates or client secrets for their application's credentials to authenticate with and access services in Microsoft Entra ID. To access the services in their Microsoft Entra tenant, developers had to store and manage application credentials outside Azure, introducing the following bottlenecks:

+ A maintenance burden for certificates and secrets.
+ The risk of leaking secrets.
+ Certificates expiring and service disruptions because of failed authentication.

**Federated identity credentials** are a new type of credential that enables workload identity federation for software workloads. Workload identity federation allows you to access Microsoft Entra protected resources without needing to manage secrets (for supported scenarios).

## How do federated identity credentials work?

You create a trust relationship between an external identity provider (IdP) and an app in Microsoft Entra ID by configuring a federated identity credential. The federated identity credential is used to indicate which token from the external IdP your application can trust. After that trust relationship is created, your software workload can exchange trusted tokens from the external identity provider for access tokens from the Microsoft identity platform. Your software workload then uses that access token to access the Microsoft Entra protected resources to which the workload has access. This process eliminates the maintenance burden of manually managing credentials and eliminates the risk of leaking secrets or having certificates expire. For more information and supported scenarios, see [workload identity federation](/azure/active-directory/develop/workload-identity-federation).

> [!NOTE]
> The match performed between the Federated Identity Credential `issuer`, `subject`, and `audience` values and the corresponding values in the token being sent to Microsoft Entra ID by the external IdP is case-sensitive. These values must match exactly in order for the scenario to be authorized. For more information,see [Federated Identity Credentials now use case-sensitive matching](/entra/identity-platform/reference-breaking-changes#federated-identity-credentials-now-use-case-sensitive-matching).

## Set up federated identity credentials through Microsoft Graph

The [federatedIdentityCredential](federatedidentitycredential.md) resource represents the configuration of a federated identity credential via Microsoft Graph. Use the [Create federatedIdentityCredential](../api/federatedidentitycredential-post.md) API to configure the object. The following properties are the building blocks of federated identity credentials:

+ **audiences** - The audience that can appear in the external token. This field is mandatory and should be set to `api://AzureADTokenExchange` for Microsoft Entra ID. It says what Microsoft identity platform should accept in the `aud` claim in the incoming token. This value represents Microsoft Entra ID in your external identity provider and has no fixed value across identity providers - you might need to create a new application registration in your IdP to serve as the audience of this token.
+ **issuer** - The URL of the external identity provider. Must match the **issuer** claim of the external token being exchanged.
+ **subject** - The identifier of the external software workload within the external identity provider. Like the audience value, it has no fixed format, as each IdP uses their own - sometimes a GUID, sometimes a colon delimited identifier, sometimes arbitrary strings. The value here must match the `sub` claim within the token presented to Microsoft Entra ID.
+ **name** - A unique string to identify the credential. This property is an alternate key and the value can be used to reference the federated identity credential via the [GET](../api/federatedidentitycredential-get.md) and [UPSERT](../api/federatedidentitycredential-upsert.md) operations.

The combination of **issuer** and **subject** must be unique on the app. When the external software workload requests Microsoft identity platform to exchange the external token for an access token, the **issuer** and **subject** values of the federated identity credential are checked against the `issuer` and `subject` claims provided in the external token. If that validation check passes, Microsoft identity platform issues an access token to the external software workload.


## Design considerations

A maximum of 20 federated identity credentials can be added per application object or user-assigned managed identity.

## Related content

+ [federatedIdentityCredential resource type](federatedidentitycredential.md)
+ [Workload identity federation](/azure/active-directory/develop/workload-identity-federation)
+ [What are managed identities for Azure resources?](/azure/active-directory/managed-identities-azure-resources/overview)
<!--
Future: add links to articles that use federated identity credentials to access Microsoft Entra resources.
>
