---
title: "Get securityToolAwsUserAdministratorFinding"
description: "Read the properties and relationships of a securityToolAwsUserAdministratorFinding object."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# Get securityToolAwsUserAdministratorFinding
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|**SERVICENOWAPI**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings('id')/graph.securityToolAwsUserAdministratorFinding
```

## Optional query parameters
This method supports `$filter` and `$orderby` of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [securityToolAwsUserAdministratorFinding](../resources/securitytoolawsuseradministratorfinding.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_securitytoolawsuseradministratorfinding"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsAnalytics/aws/findings('MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDA')/graph.securityToolAwsUserAdministratorFinding
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.securityToolAwsUserAdministratorFinding"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaevan_schema/$metadata#identityGovernance/permissionsAnalytics/aws/findings/microsoft.graph.securityToolAwsUserAdministratorFinding",
    "value": [
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDA",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2Nvb3Blcm1laXR6",
                "externalId": "arn:aws:iam::377596131774:user/coopermeitz",
                "displayName": "coopermeitz",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDE",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2NoYWl0YW55YQ",
                "externalId": "arn:aws:iam::377596131774:user/chaitanya",
                "displayName": "chaitanya",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDI",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2NoZXRhbnBhdGVs",
                "externalId": "arn:aws:iam::377596131774:user/chetanpatel",
                "displayName": "chetanpatel",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDM",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL21heWE",
                "externalId": "arn:aws:iam::377596131774:user/maya",
                "displayName": "maya",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDQ",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3JhZ2hhdmVuZHJhcw",
                "externalId": "arn:aws:iam::377596131774:user/raghavendras",
                "displayName": "raghavendras",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDU",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL21hdWxpbi1jbng",
                "externalId": "arn:aws:iam::377596131774:user/maulin-cnx",
                "displayName": "maulin-cnx",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDY",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3N1cnlh",
                "externalId": "arn:aws:iam::377596131774:user/surya",
                "displayName": "surya",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDc",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 94
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3NhcmF0aA",
                "externalId": "arn:aws:iam::377596131774:user/sarath",
                "displayName": "sarath",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDg",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2dlZXRhLmFsYXBhdGk",
                "externalId": "arn:aws:iam::377596131774:user/geeta.alapati",
                "displayName": "geeta.alapati",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NDk",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL0FuZHlfQmFnX0Jhc2g",
                "externalId": "arn:aws:iam::377596131774:user/Andy_Bag_Bash",
                "displayName": "Andy_Bag_Bash",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NTA",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3NwYXJ2ZWVu",
                "externalId": "arn:aws:iam::377596131774:user/sparveen",
                "displayName": "sparveen",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NTE",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3RlbXBfdXNlcg",
                "externalId": "arn:aws:iam::377596131774:user/temp_user",
                "displayName": "temp_user",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NTI",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2FsZXhlaQ",
                "externalId": "arn:aws:iam::377596131774:user/alexei",
                "displayName": "alexei",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NTM",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3RlbXB1c2VyYnljcm9zc2FjY291bnQ",
                "externalId": "arn:aws:iam::377596131774:user/tempuserbycrossaccount",
                "displayName": "tempuserbycrossaccount",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NTQ",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL21ydWR1bGE",
                "externalId": "arn:aws:iam::377596131774:user/mrudula",
                "displayName": "mrudula",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NTU",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3NoYWltYQ",
                "externalId": "arn:aws:iam::377596131774:user/shaima",
                "displayName": "shaima",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NTY",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 96
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3ByYXRpbWE",
                "externalId": "arn:aws:iam::377596131774:user/pratima",
                "displayName": "pratima",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NTc",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2V0aGFu",
                "externalId": "arn:aws:iam::377596131774:user/ethan",
                "displayName": "ethan",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NTg",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL25hdmVlbi1zMy1hY2Nlc3M",
                "externalId": "arn:aws:iam::377596131774:user/naveen-s3-access",
                "displayName": "naveen-s3-access",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NTk",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3VzZXJfaWFtZnVsbGFjY2Vzc19wcml2aWxlZ2Vlc2NhbGF0aW9u",
                "externalId": "arn:aws:iam::377596131774:user/user_iamfullaccess_privilegeescalation",
                "displayName": "user_iamfullaccess_privilegeescalation",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NjA",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3Nha2V0aA",
                "externalId": "arn:aws:iam::377596131774:user/saketh",
                "displayName": "saketh",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NjE",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3ByYXNoYW50aA",
                "externalId": "arn:aws:iam::377596131774:user/prashanth",
                "displayName": "prashanth",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NjI",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2xpc3N5ZWxpYXM",
                "externalId": "arn:aws:iam::377596131774:user/lissyelias",
                "displayName": "lissyelias",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NjM",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3VzZXJfbWZhX25vdF9lbmFibGVk",
                "externalId": "arn:aws:iam::377596131774:user/user_mfa_not_enabled",
                "displayName": "user_mfa_not_enabled",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NjQ",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3VzZXJfYWRtaW5pc3RyYXRvcmFjY2Vzcw",
                "externalId": "arn:aws:iam::377596131774:user/user_administratoraccess",
                "displayName": "user_administratoraccess",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NjU",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 94
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2F2aWs",
                "externalId": "arn:aws:iam::377596131774:user/avik",
                "displayName": "avik",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NjY",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 89
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3VzZXJfY3VzdG9tcG9saWN5X3MzZnVsbGFjY2Vzc19kZW55ZWMyX2FkbWluaXN0cmF0b3I",
                "externalId": "arn:aws:iam::377596131774:user/user_custompolicy_s3fullaccess_denyec2_administrator",
                "displayName": "user_custompolicy_s3fullaccess_denyec2_administrator",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3Njc",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2FzaHlh",
                "externalId": "arn:aws:iam::377596131774:user/ashya",
                "displayName": "ashya",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3Njg",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3VzZXJfYWRtaW5pc3RyYXRvcl9idWNrZXRwb2xpY3lfZGVueXVzZXI",
                "externalId": "arn:aws:iam::377596131774:user/user_administrator_bucketpolicy_denyuser",
                "displayName": "user_administrator_bucketpolicy_denyuser",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3Njk",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2NoYWl0YW55YS10ZXN0LWZpcnN0",
                "externalId": "arn:aws:iam::377596131774:user/chaitanya-test-first",
                "displayName": "chaitanya-test-first",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NzA",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL21hc29u",
                "externalId": "arn:aws:iam::377596131774:user/mason",
                "displayName": "mason",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NzE",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3RlbXBfdXNlcl8x",
                "externalId": "arn:aws:iam::377596131774:user/temp_user_1",
                "displayName": "temp_user_1",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NzI",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3VzZXJfaW5fZ3JvdXBfYWRtaW5pc3RyYXRvcmFjY2Vzcw",
                "externalId": "arn:aws:iam::377596131774:user/user_in_group_administratoraccess",
                "displayName": "user_in_group_administratoraccess",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NzM",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 92
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3VzZXJfYWRtaW5pc3RyYXRvcl9pbmxpbmVfZGVueXMzYWxs",
                "externalId": "arn:aws:iam::377596131774:user/user_administrator_inline_denys3all",
                "displayName": "user_administrator_inline_denys3all",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NzQ",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3NyYXZhbmk",
                "externalId": "arn:aws:iam::377596131774:user/sravani",
                "displayName": "sravani",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NzU",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL2JhbGFqaQ",
                "externalId": "arn:aws:iam::377596131774:user/balaji",
                "displayName": "balaji",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3NzY",
            "createdDateTime": "2023-10-25T19:48:41.979814Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 93
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06OjM3NzU5NjEzMTc3NDp1c2VyL3VzZXJfbWZhX2VuYWJsZWQ",
                "externalId": "arn:aws:iam::377596131774:user/user_mfa_enabled",
                "displayName": "user_mfa_enabled",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "377596131774"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "377596131774",
                    "authorizationSystemName": "cloudknox-staging",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsMzc3NTk2MTMxNzc0"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3Nzc",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "cmFtcHJha2FzaG5AbWljcm9zb2Z0LmNvbQ",
                "externalId": "ramprakashn@microsoft.com",
                "displayName": "ram narayanaswamy",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3Nzg",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL3NyaWhhcnNoYQ",
                "externalId": "arn:aws:iam::956987887735:user/sriharsha",
                "displayName": "sriharsha",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3Nzk",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL3JhZ2hhdmVuZHJh",
                "externalId": "arn:aws:iam::956987887735:user/raghavendra",
                "displayName": "raghavendra",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3ODA",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL25paGFyaWth",
                "externalId": "arn:aws:iam::956987887735:user/niharika",
                "displayName": "niharika",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3ODE",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "ZWJlcnRAbWNpZW1zdGcxLm9ubWljcm9zb2Z0LmNvbQ",
                "externalId": "ebert@mciemstg1.onmicrosoft.com",
                "displayName": "ebert",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3ODI",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL2dlZXRh",
                "externalId": "arn:aws:iam::956987887735:user/geeta",
                "displayName": "geeta",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3ODM",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "dXNyMTA5OTlAYXNmLnh5eg",
                "externalId": "usr10999@asf.xyz",
                "displayName": "fn10999 ln10999",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3ODQ",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "Y2hhcmxpZUBtY2llbXN0ZzEub25taWNyb3NvZnQuY29t",
                "externalId": "charlie@mciemstg1.onmicrosoft.com",
                "displayName": "charlie",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3ODU",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL3ByYXNoYW50aA",
                "externalId": "arn:aws:iam::956987887735:user/prashanth",
                "displayName": "prashanth",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3ODY",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "cmFnaGF2ZW5kcmFzQG1pY3Jvc29mdC5jb20",
                "externalId": "raghavendras@microsoft.com",
                "displayName": "raghavendras@microsoft.com",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3ODc",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "Ym9iQG1jaWVtc3RnMS5vbm1pY3Jvc29mdC5jb20",
                "externalId": "bob@mciemstg1.onmicrosoft.com",
                "displayName": "bob",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3ODg",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "c2FkZGVwYWxsaUBtY2llbXN0ZzEub25taWNyb3NvZnQuY29t",
                "externalId": "saddepalli@mciemstg1.onmicrosoft.com",
                "displayName": "Sriharsha Addepalli",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3ODk",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL21ydWR1bGE",
                "externalId": "arn:aws:iam::956987887735:user/mrudula",
                "displayName": "mrudula",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3OTA",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL25paGFyaWthLXRlc3QtZGVsZXRlLTA1MjQ",
                "externalId": "arn:aws:iam::956987887735:user/niharika-test-delete-0524",
                "displayName": "niharika-test-delete-0524",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3OTE",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "Z2VldGFhbGFwYXRpQG1jaWVtc3RnMS5vbm1pY3Jvc29mdC5jb20",
                "externalId": "geetaalapati@mciemstg1.onmicrosoft.com",
                "displayName": "geetaalapati@mciemstg1.onmicrosoft.com",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3OTI",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 100
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL2FzaHlh",
                "externalId": "arn:aws:iam::956987887735:user/ashya",
                "displayName": "ashya",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3OTM",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL3NyYXZhbmk",
                "externalId": "arn:aws:iam::956987887735:user/sravani",
                "displayName": "sravani",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3OTQ",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "c2FrZXRoa29sbHVAbWljcm9zb2Z0LmNvbQ",
                "externalId": "sakethkollu@microsoft.com",
                "displayName": "Saketh Kollu",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3OTU",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "Z2VldGFhbGFwYXRpQG1pY3Jvc29mdC5jb20",
                "externalId": "geetaalapati@microsoft.com",
                "displayName": "geeta alapati",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3OTY",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "cHJhdGltYUBjbG91ZGtub3guaW8",
                "externalId": "pratima@cloudknox.io",
                "displayName": "Pratima Gogineni",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3OTc",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL3ByYXRpbWE",
                "externalId": "arn:aws:iam::956987887735:user/pratima",
                "displayName": "pratima",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3OTg",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "ZGF2ZUBtY2llbXN0ZzEub25taWNyb3NvZnQuY29t",
                "externalId": "dave@mciemstg1.onmicrosoft.com",
                "displayName": "dave",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM3OTk",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "cloudTrail",
            "permissionsCreepIndex": {
                "score": 4
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL2FuZHl3YW5n",
                "externalId": "arn:aws:iam::956987887735:user/andywang",
                "displayName": "andywang",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM4MDA",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YWx2b2xrb3ZAZ21haWwuY29t",
                "externalId": "alvolkov@gmail.com",
                "displayName": "readonly user1",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM4MDE",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "cmFnaGF2ZW5kcmFzMUBtY2llbXN0ZzEub25taWNyb3NvZnQuY29t",
                "externalId": "raghavendras1@mciemstg1.onmicrosoft.com",
                "displayName": "raghavendras_awsso_dn",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM4MDI",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL3NoYWltYQ",
                "externalId": "arn:aws:iam::956987887735:user/shaima",
                "displayName": "shaima",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM4MDM",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 99
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "dXR0ZWpAY2xvdWRrbm94Lmlv",
                "externalId": "uttej@cloudknox.io",
                "displayName": "Uttej Guduru",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        },
        {
            "id": "MSxTZWN1cml0eVRvb2xBd3NVc2VyQWRtaW5pc3RyYXRvckZpbmRpbmcsNTM4MDQ",
            "createdDateTime": "2023-10-25T19:49:41.881937Z",
            "securityTools": "macie,wafShield,cloudTrail,inspector,securityHub,detective,guardDuty",
            "permissionsCreepIndex": {
                "score": 98
            },
            "identity": {
                "@odata.type": "#microsoft.graph.awsUser",
                "id": "YXJuOmF3czppYW06Ojk1Njk4Nzg4NzczNTp1c2VyL2F2aWs",
                "externalId": "arn:aws:iam::956987887735:user/avik",
                "displayName": "avik",
                "source": {
                    "@odata.type": "#microsoft.graph.awsSource",
                    "identityProviderType": "aws",
                    "accountId": "956987887735"
                },
                "authorizationSystem": {
                    "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
                    "authorizationSystemId": "956987887735",
                    "authorizationSystemName": "ck-development",
                    "authorizationSystemType": "aws",
                    "id": "MSxhd3MsOTU2OTg3ODg3NzM1"
                }
            }
        }
    ]
}
```

