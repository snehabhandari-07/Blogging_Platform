module BloggingPlatform::Blog {
    use std::string::String;
    use std::vector;
    use aptos_framework::account;
    use aptos_framework::signer;
    use aptos_framework::timestamp;

    #[test_only]
    use std::string;

    /// Struct representing a blog post
    struct BlogPost has store, drop {
        title: String,
        content: String,
        timestamp: u64,
        author: address
    }

    /// Struct representing a user's blog
    struct UserBlog has key {
        posts: vector<BlogPost>,
        post_count: u64
    }

    const E_BLOG_NOT_FOUND: u64 = 1;
    const E_NOT_POST_OWNER: u64 = 2;
    const MAX_CONTENT_LENGTH: u64 = 5000;

    /// Function to initialize a new blog for a user
    public entry fun create_blog(account: &signer) {
        let user_blog = UserBlog {
            posts: vector::empty<BlogPost>(),
            post_count: 0
        };
        move_to(account, user_blog);
    }

    /// Function to create a new blog post
    public entry fun create_post(
        account: &signer,
        title: String,
        content: String
    ) acquires UserBlog {
        let author_addr = signer::address_of(account);
        assert!(exists<UserBlog>(author_addr), E_BLOG_NOT_FOUND);
        
        let user_blog = borrow_global_mut<UserBlog>(author_addr);
        let new_post = BlogPost {
            title,
            content,
            timestamp: timestamp::now_seconds(),
            author: author_addr
        };
        
        vector::push_back(&mut user_blog.posts, new_post);
        user_blog.post_count = user_blog.post_count + 1;
    }

    #[test(admin = @BloggingPlatform)]
    public entry fun test_create_blog(admin: &signer) {
        create_blog(admin);
    }
}