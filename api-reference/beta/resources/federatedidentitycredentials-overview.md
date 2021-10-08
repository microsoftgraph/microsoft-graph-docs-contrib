---
title: "Federated identity credentials in Azure Active Directory (Azure AD)"
description: "Federated identity credentials allow you to access Azure and Microsoft Graph resources without having to manage secrets. This is part of workload identity federation in Azure AD."
author: "kjyam98"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: conceptualPageType
---

# Overview of federated identity credentials in Azure Active Directory (preview)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Traditionally, developers use certificates or client secrets for their application's credentials to authenticate with and access services in Azure AD. To access the services in their Azure AD tenant, developers have had to store and manage application credentials outside Azure, introducing the following bottlenecks:

+ A maintenance burden for certificates and secrets.
+ The risk of leaking secrets.
+ Certificates expiring and service disruptions because of failed authentication.

**Federated identity credentials** are a new type of credential that allows you to access Azure and Microsoft Graph resources without having to manage secrets. The credential will be used to exchange a token from a trusted issuer for an Azure AD access token, enabling external applications to access Azure and Microsoft Graph resources as part of workload identity federation in Azure AD.

A key scenario for federated identity credentials is exchanging GitHub issued tokens for Azure AD access tokens. Set a federated credential on an Azure AD application allowing a GitHub Actions workflow to deploy resources associated with that application.

The [federatedIdentityCredential](federatedidentitycredential.md) resource represents the configuration of a federated identity credential via Microsoft Graph API. The following properties are the building blocks of federated identity credentials:

+ **audiences**—Represents the recipient of the token. Azure AD has fixed, known audience values (`api://AzureADTokenExchange`).
+ **issuer**—Identifies the issuer or "authorization server" that constructs and returns the token. For Azure AD issuer, this includes the tenant identifier; Azure AD global and national cloud environments are identified differently.
+ **subject**—For an Azure AD issuer, the value of the id of the servicePrincipal object. For all other issuers, a string that is not validated by Azure AD.

Federated identity credentials are supported on applications only. A maximum of 20 federated identity credentials can be added per application object.

## See also

+ [federatedIdentityCredential resource type](federatedidentitycredentials.md)
+ [Workload identity federation](/azure/active-directory/develop/workload-identity-federation)
+ [What are managed identities for Azure resources?](/azure/active-directory/managed-identities-azure-resources/overview)
<!--
Future: add links to articles that use federated identity credentials to access Azure AD resources.
>