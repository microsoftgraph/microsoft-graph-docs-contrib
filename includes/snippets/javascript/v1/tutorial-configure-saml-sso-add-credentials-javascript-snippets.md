---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const servicePrincipal = {
    keyCredentials: [
        {
            customKeyIdentifier: '5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A',
            endDateTime: '2027-01-22T00:00:00Z',
            keyId: '4c266507-3e74-4b91-aeba-18a25b450f6e',
            startDateTime: '2024-02-21T17:09:35Z',
            type: 'X509CertAndPassword',
            usage: 'Sign',
            key: 'MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=',
            displayName: 'CN=AWSContoso'
        },
        {
            customKeyIdentifier: '5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A',
            endDateTime: '2027-01-22T00:00:00Z',
            keyId: 'e35a7d11-fef0-49ad-9f3e-aacbe0a42c42',
            startDateTime: '2024-02-21T17:09:35Z',
            type: 'AsymmetricX509Cert',
            usage: 'Verify',
            key: 'MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs=',
            displayName: 'CN=AWSContoso'
        }
    ],
    passwordCredentials: [
        {
            customKeyIdentifier: '5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A',
            keyId: '4c266507-3e74-4b91-aeba-18a25b450f6e',
            endDateTime: '2022-01-27T19:40:33Z',
            startDateTime: '2027-01-22T00:00:00Z',
            secretText: '61891f4ee44d'
        }
    ]
};

await client.api('/servicePrincipals/ef04fead-8549-4e59-b5f7-d1d8c697ec64')
	.update(servicePrincipal);

```