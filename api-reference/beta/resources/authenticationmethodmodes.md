---
title: "authenticationMethodModes enum type"
description: "Defines the authentication method modes that can be used as part of an authentication method combination in an authentication strength."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: enumPageType
ms.date: 01/30/2026
---

# authenticationMethodModes enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the authentication method modes that can be used as part of an authentication method combination in an authentication strength. This flagged enumeration allows multiple members to be selected simultaneously.

## Members

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Use the `Prefer: include-unknown-enum-members` request header to get the following member in this evolvable enum: `qrCodePin`.

| Member | Description |
| ---- | ---- |
| password | Password authentication method mode. |
| voice | Voice call authentication method mode. |
| hardwareOath | Hardware OATH token authentication method mode. |
| softwareOath | Software OATH token authentication method mode. |
| sms | SMS authentication method mode. |
| fido2 | FIDO2 security key authentication method mode. |
| windowsHelloForBusiness | Windows Hello for Business authentication method mode. |
| microsoftAuthenticatorPush | Microsoft Authenticator push notification authentication method mode. |
| deviceBasedPush | Device-based push notification authentication method mode. |
| temporaryAccessPassOneTime | Temporary Access Pass (one-time use) authentication method mode. |
| temporaryAccessPassMultiUse | Temporary Access Pass (multi-use) authentication method mode. |
| email | Email authentication method mode. |
| x509CertificateSingleFactor | X.509 certificate single-factor authentication method mode. |
| x509CertificateMultiFactor | X.509 certificate multi-factor authentication method mode. |
| federatedSingleFactor | Federated single-factor authentication method mode. |
| federatedMultiFactor | Federated multi-factor authentication method mode. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |
| qrCodePin | QR code PIN authentication method mode. Use the `Prefer: include-unknown-enum-members` request header to get this value. |
