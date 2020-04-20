# README

This app will gather some resources to help kids to learn.
The parents will be able to register their kids and the resources they use for them.

## TODO

- [ ] Setup DB structure
  - [ ] Create migrations
  - [ ] Create models
    - [x] Users (parents, admin)
    - [x] Kids
    - [x] Resources
    - [x] Shares
- [ ] Create controllers
  - [ ] pages
  - [x] dashboard
  - [x] kids
  - [x] resources
  - [x] shares
- [ ] Create routes
  - [x] dashboard
  - [x] kids (resources)
  - [x] resources (resources)
  - [x] shares (resources: only[index, new, create])
- [ ] Components
  - [ ] Kids
    - [x] List
    - [x] Add kid
    - [x] Delete kid
      - [x] Refresh kids component list
  - [ ] Resources
    - [x] List
      - [ ] Search resource
      - [ ] Lists by type (newly added, most searched, etc)
      - [ ] Add resource
      - [ ] Edit resource
      - [ ] Remove resource
    - [x] Item
- [x] Share account
  - [x] send mail
  - [ ] check account association on register
- [x] Install Tailwind CSS
- [x] Use Vue JS
- [ ] Install pundit
- [x] Install devise
