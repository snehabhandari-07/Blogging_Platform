# Decentralized Blogging Platform

## Introduction
The Decentralized Blogging Platform is a blockchain-based solution built on the Aptos network that enables users to create and manage their blog content in a decentralized manner. This platform leverages blockchain technology to ensure content permanence, censorship resistance, and true ownership of blog posts.

## Deployed Contract
- **Network**: Aptos Mainnet
- **Contract Address**: `0xe53a4e5bba42c366ab6612902d997f2bf6976e4fc00f06f625f5c8361c0eb375`

## Features
- **Decentralized Content Storage**: All blog posts are stored on the Aptos blockchain
- **User-Owned Blogs**: Each user can create and manage their own blog
- **Timestamped Posts**: Every post is automatically timestamped for authenticity
- **Content Persistence**: Once published, content cannot be altered or deleted

## Smart Contract Functions

### `create_blog()`
Initializes a new blog for a user. Each user can only have one blog associated with their address.

### `create_post(title: String, content: String)`
Allows users to create new blog posts with a title and content. Posts are automatically timestamped and associated with the author's address.

## Project Setup

### Prerequisites
- Aptos CLI
- Move Compiler
- Aptos Wallet

### Installation
1. Clone the repository
```bash
git clone <repository-url>
```

2. Navigate to the project directory
```bash
cd blogging_platform
```

3. Build the project
```bash
aptos move compile
```

4. Run tests
```bash
aptos move test
```

## Vision
The Decentralized Blogging Platform aims to revolutionize content creation and distribution by:
- Eliminating central points of control in content publishing
- Ensuring content creators maintain full ownership of their work
- Creating an immutable record of published content
- Enabling direct creator-to-reader relationships without intermediaries
- Building a censorship-resistant platform for free expression

## Future Goals

### Phase 1: Enhanced Features (Q2 2024)
- Comment system implementation
- Post categorization and tagging
- Reader engagement metrics
- Content monetization options

### Phase 2: Platform Expansion (Q3 2024)
- Multi-media content support
- Advanced formatting options
- User following system
- Content recommendation engine

### Phase 3: Ecosystem Development (Q4 2024)
- Integration with other decentralized platforms
- Creator tokens and incentives
- Community governance system
- Cross-chain compatibility

## Technical Stack
- **Blockchain**: Aptos Network
- **Smart Contract Language**: Move
- **Dependencies**: AptosFramework

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing
We welcome contributions to the Decentralized Blogging Platform! Please read our contributing guidelines before submitting pull requests.

## Security
If you discover any security vulnerabilities, please contact us through our security email: [security@example.com]

## Support
For support, questions, or suggestions, please:
1. Open an issue in the GitHub repository
2. Join our Discord community
3. Contact us through our support channels

