---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta policies authentication-methods-policy authentication-method-configurations patch --authentication-method-configuration-id {authenticationMethodConfiguration-id} --body '{\
    "@odata.type": "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration",\
    "id": "X509Certificate",\
    "state": "enabled",\
    "certificateUserBindings": [\
        {\
            "x509CertificateField": "PrincipalName",\
            "userProperty": "onPremisesUserPrincipalName",\
            "priority": 1\
        }\
    ],\
    "authenticationModeConfiguration": {\
        "x509CertificateAuthenticationDefaultMode": "x509CertificateMultiFactor",\
        "rules": [\
            {\
                "x509CertificateRuleType": "issuerSubject",\
                "identifier": "CN=ContosoCA,DC=Contoso,DC=org ",\
                "x509CertificateAuthenticationMode": "x509CertificateMultiFactor"\
            },\
            {\
                "x509CertificateRuleType": "policyOID",\
                "identifier": "1.2.3.4",\
                "x509CertificateAuthenticationMode": "x509CertificateMultiFactor"\
            }\
        ]\
    },\
    "issuerHintsConfiguration": {\
        "state": "disabled"\
    },\
    "crlValidationConfiguration": {\
        "state": "disabled",\
        "exemptedCertificateAuthoritiesSubjectKeyIdentifiers": []\
    },\
    "certificateAuthorityScopes": [\
        {\
            "subjectKeyIdentifier": "aaaaaaaabbbbcccc111122222222222222333333",\
            "publicKeyInfrastructureIdentifier": "Contoso PKI",\
            "includeTargets": [\
            {\
                "id": "aaaaaaaa-bbbb-cccc-1111-222222222222",\
                "targetType": "group"\
            }\
            ]\
        }    \
    ],\
    "includeTargets": [\
        {\
            "targetType": "group",\
            "id": "all_users",\
            "isRegistrationRequired": false\
        }\
    ]\
}\
'

```