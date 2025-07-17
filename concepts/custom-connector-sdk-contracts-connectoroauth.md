---
title: "Microsoft 365 Copilot connectors SDK contracts connector OAuth API"
author: rchanda1392
manager: harshkum
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.subservice: search
description: "Learn about the Copilot connectors SDK contracts connector OAuth API."
ms.date: 11/07/2024
---

# Copilot connectors SDK connector OAuth API

The Microsoft 365 Copilot connectors (formerly Microsoft Graph connectors) SDK contracts connector OAuth API is used for OAuth flows such as refreshing access tokens during crawls.

## Connector OAuth APIs

This API is used to generate a refreshed token from the auth server of the data source and send the token details to the platform.

|Method |Parameters |Return Type |Description |
|:----------|:-------------|:----------|:----------|
|RefreshAccessToken |[RefreshAccessTokenRequest](#refreshaccesstokenrequest) |[RefreshAccessTokenResponse](#refreshaccesstokenresponse) | Shows the refreshed access token. |

## Connector OAuth API models

### RefreshAccessTokenRequest

Request model for refreshing the OAuth token.

|Property |Type |Description |
|:----------|:-------------|:----------|
|authenticationData |[AuthenticationData](/graph/custom-connector-sdk-contracts-common#authenticationdata) |Holds the data source access URL, the credentials to access the data source, and current token information. |

### RefreshAccessTokenResponse

Response model for the refresh OAuth token request.

|Property |Type |Description |
|:----------|:-------------|:----------|
|status |[OperationStatus](/graph/custom-connector-sdk-contracts-common#operationstatus) |Shows the status of the operation and details such as error messages. |
|refreshedCredentialData |[OAuth2ClientCredentialsResponse](/graph/custom-connector-sdk-contracts-common#oauth2clientcredentialsresponse) |Holds the refreshed token information. |
