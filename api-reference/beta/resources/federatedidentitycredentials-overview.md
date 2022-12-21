---
title: "Overview of federated identity credentials in Azure Active Directory"
description: "Federated identity credentials allow you to access Azure and Microsoft Graph resources without having to manage secrets. This is part of workload identity federation in Azure AD."
author: "shahzad-khalid"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: conceptualPageType
ms.date: 08/03/2022
---

# Overview of federated identity credentials in Azure Active Directory

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Traditionally, developers use certificates or client secrets for their application's credentials to authenticate with and access services in Azure AD. To access the services in their Azure AD tenant, developers have had to store and manage application credentials outside Azure, introducing the following bottlenecks:

+ A maintenance burden for certificates and secrets.
+ The risk of leaking secrets.
+ Certificates expiring and service disruptions because of failed authentication.

**Federated identity credentials** are a new type of credential that enables workload identity federation for software workloads. Workload identity federation allows you to access Azure Active Directory (Azure AD) protected resources without needing to manage secrets (for supported scenarios).

## How do federated identity credentials work?

You create a trust relationship between an external identity provider (IdP) and an app in Azure AD by configuring a federated identity credential. The federated identity credential is used to indicate which token from the external IdP should be trusted by your application. After that trust relationship is created, your software workload can exchange trusted tokens from the external identity provider for access tokens from the Microsoft identity platform. Your software workload then uses that access token to access the Azure AD protected resources to which the workload has been granted access. This eliminates the maintenance burden of manually managing credentials and eliminates the risk of leaking secrets or having certificates expire. For more information and supported scenarios, see [workload identity federation](/azure/active-directory/develop/workload-identity-federation).

## Set up federated identity credentials through Microsoft Graph

The [federatedIdentityCredential](federatedidentitycredential.md) resource represents the configuration of a federated identity credential via Microsoft Graph. The following properties are the building blocks of federated identity credentials:

+ **audiences** — The audience that can appear in the external token. This field is mandatory and should be set to `api://AzureADTokenExchange` for Azure AD. It says what Microsoft identity platform should accept in the aud claim in the incoming token. This value represents Azure AD in your external identity provider and has no fixed value across identity providers - you might need to create a new application registration in your IdP to serve as the audience of this token.
+ **issuer** — The URL of the external identity provider. Must match the **issuer** claim of the external token being exchanged.
+ **subject** — The identifier of the external software workload within the external identity provider. Like the audience value, it has no fixed format, as each IdP uses their own - sometimes a GUID, sometimes a colon delimited identifier, sometimes arbitrary strings. The value here must match the sub claim within the token presented to Azure AD.

The combination of **issuer** and **subject** must be unique on the app.  When the external software workload requests Microsoft identity platform to exchange the external token for an access token, the **issuer** and **subject** values of the federated identity credential are checked against the `issuer` and `subject` claims provided in the external token. If that validation check passes, Microsoft identity platform issues an access token to the external software workload.


## Design considerations

Federated identity credentials are supported on applications only. A maximum of 20 federated identity credentials can be added per application object.

## See also

+ [federatedIdentityCredential resource type](federatedidentitycredential.md)
+ [Workload identity federation](/azure/active-directory/develop/workload-identity-federation)
+ [What are managed identities for Azure resources?](/azure/active-directory/managed-identities-azure-resources/overview)
<!--
Future: add links to articles that use federated identity credentials to access Azure AD resources.
>
