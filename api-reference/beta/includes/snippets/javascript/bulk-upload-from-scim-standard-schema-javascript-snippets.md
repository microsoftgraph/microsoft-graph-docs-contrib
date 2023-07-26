---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const bulkUpload = {
    schemas: ['urn:ietf:params:scim:api:messages:2.0:BulkRequest'],
    Operations: [
    {
        method: 'POST',
        bulkId: '897401c2-2de4-4b87-a97f-c02de3bcfc61',
        path: '/Users',
        data: {
            schemas: ['urn:ietf:params:scim:schemas:core:2.0:User',
            'urn:ietf:params:scim:schemas:extension:enterprise:2.0:User'],
            id: '2819c223-7f76-453a-919d-413861904646',
            externalId: '701984',
            userName: 'bjensen@example.com',
            name: {
                formatted: 'Ms. Barbara J Jensen, III',
                familyName: 'Jensen',
                givenName: 'Barbara',
                middleName: 'Jane',
                honorificPrefix: 'Ms.',
                honorificSuffix: 'III'
            },
            displayName: 'Babs Jensen',
            nickName: 'Babs',
            emails: [
            {
              value: 'bjensen@example.com',
              type: 'work',
              primary: true
            }
            ],
            addresses: [
            {
              type: 'work',
              streetAddress: '234300 Universal City Plaza',
              locality: 'Hollywood',
              region: 'CA',
              postalCode: '91608',
              country: 'USA',
              formatted: '100 Universal City Plaza\nHollywood, CA 91608 USA',
              primary: true
            }
            ],
            phoneNumbers: [
            {
              value: '555-555-5555',
              type: 'work'
            }
            ],
            userType: 'Employee',
            title: 'Tour Guide',
            preferredLanguage: 'en-US',
            locale: 'en-US',
            timezone: 'America/Los_Angeles',
            active: true,
            'urn:ietf:params:scim:schemas:extension:enterprise:2.0:User': {
                employeeNumber: '701984',
                costCenter: '4130',
                organization: 'Universal Studios',
                division: 'Theme Park',
                department: 'Tour Operations',
                manager: {
                  value: '89607',
                  '$ref': '../Users/26118915-6090-4610-87e4-49d8ca9f808d',
                  displayName: 'John Smith'
                 }
            }
        }
    },
    {
        method: 'POST',
        bulkId: '897401c2-2de4-4b87-a97f-c02de3bcfc61',
        path: '/Users',
        data: {
            schemas: ['urn:ietf:params:scim:schemas:core:2.0:User',
            'urn:ietf:params:scim:schemas:extension:enterprise:2.0:User'],
            id: '2819c223-7f76-453a-919d-413861904646',
            externalId: '701985',
            userName: 'Kjensen@example.com',
            name: {
                formatted: 'Ms. Kathy J Jensen, III',
                familyName: 'Jensen',
                givenName: 'Kathy',
                middleName: 'Jane',
                honorificPrefix: 'Ms.',
                honorificSuffix: 'III'
            },
            displayName: 'Kathy Jensen',
            nickName: 'Kathy',
            emails: [
            {
              value: 'kjensen@example.com',
              type: 'work',
              primary: true
            }
            ],
            addresses: [
            {
              type: 'work',
              streetAddress: '100 Oracle City Plaza',
              locality: 'Hollywood',
              region: 'CA',
              postalCode: '91618',
              country: 'USA',
              formatted: '100 Oracle City Plaza\nHollywood, CA 91618 USA',
              primary: true
            }
            ],
            phoneNumbers: [
            {
              value: '555-555-5545',
              type: 'work'
            }
            ],
            userType: 'Employee',
            title: 'Tour Lead',
            preferredLanguage: 'en-US',
            locale: 'en-US',
            timezone: 'America/Los_Angeles',
            active: true,
            'urn:ietf:params:scim:schemas:extension:enterprise:2.0:User': {
            employeeNumber: '701984',
            costCenter: '4130',
            organization: 'Universal Studios',
            division: 'Theme Park',
            department: 'Tour Operations',
            manager: {
              value: '89607',
              '$ref': '../Users/26118915-6090-4610-87e4-49d8ca9f808d',
              displayName: 'John Smith'
             }
            }
        }
    }
],
    failOnErrors: null
};

await client.api('/servicePrincipals/{servicePrincipalId}/synchronization/jobs/{jobId}/bulkUpload')
	.version('beta')
	.post(bulkUpload);

```