# Open Data Governance & Operational Guidelines
#### City of Asheville, NC

## Background
On October 13, 2015 the Asheville City Council adopted a resolution “directing the City Manager to establish an open data policy for the City of Asheville for sustaining public data availability using open data standards.” That resolution outlines high-level requirements for the City of Asheville's open data efforts.

The current site provides more detailed documentation on the implementation of the City's open data program following and building on the [initial technical plan](https://github.com/cityofasheville/open-data-portal-technical-plan-2016) published in October, 2016.

## Technical Standards
There is near-universal consensus that the current standard for the delivery of raw, machine-readable datasets is a [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) (REpresentational State Transfer) application programming interface (API) that returns data in either a comma-separated-value (CSV) or a Javascript Object Notation (JSON) format. The REST API is commonly supplemented by the ability to simply download the dataset as a file in either of the above formats. The [City of Asheville open data portal](http://data.ashevillenc.gov/) supports both delivery methods and both formats.

The new [GraphQL standard](http://graphql.org/) released by Facebook in 2015 is seeing rapid adoption as a powerful alternative to REST that better reflects the relationships between different datasets, provides access to the underlying schema,  and offers greater control to data clients over what information should be delivered. As part of In Phase 2 of the implementation plan below, the City of Asheville will add a GraphQL API endpoint to the same data provided via the REST API.
