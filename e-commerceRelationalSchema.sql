-- Primary keys
ALTER TABLE `your-project.your_dataset.customers`
  ADD PRIMARY KEY (customer_id) NOT ENFORCED;

ALTER TABLE `your-project.your_dataset.campaigns`
  ADD PRIMARY KEY (campaign_id) NOT ENFORCED;

ALTER TABLE `your-project.your_dataset.products`
  ADD PRIMARY KEY (product_id) NOT ENFORCED;

ALTER TABLE `your-project.your_dataset.sessions`
  ADD PRIMARY KEY (session_id) NOT ENFORCED;

ALTER TABLE `your-project.your_dataset.orders`
  ADD PRIMARY KEY (order_id) NOT ENFORCED;

ALTER TABLE `your-project.your_dataset.events`
  ADD PRIMARY KEY (event_id) NOT ENFORCED;

ALTER TABLE `your-project.your_dataset.order_items`
  ADD PRIMARY KEY (order_item_id) NOT ENFORCED;

-- Foreign keys
ALTER TABLE `your-project.your_dataset.sessions`
  ADD FOREIGN KEY (customer_id)
    REFERENCES `your-project.your_dataset.customers`(customer_id) NOT ENFORCED,
  ADD FOREIGN KEY (campaign_id)
    REFERENCES `your-project.your_dataset.campaigns`(campaign_id) NOT ENFORCED;

ALTER TABLE `your-project.your_dataset.orders`
  ADD FOREIGN KEY (session_id)
    REFERENCES `your-project.your_dataset.sessions`(session_id) NOT ENFORCED,
  ADD FOREIGN KEY (customer_id)
    REFERENCES `your-project.your_dataset.customers`(customer_id) NOT ENFORCED;

ALTER TABLE `your-project.your_dataset.events`
  ADD FOREIGN KEY (session_id)
    REFERENCES `your-project.your_dataset.sessions`(session_id) NOT ENFORCED,
  ADD FOREIGN KEY (product_id)
    REFERENCES `your-project.your_dataset.products`(product_id) NOT ENFORCED,
  ADD FOREIGN KEY (order_id)
    REFERENCES `your-project.your_dataset.orders`(order_id) NOT ENFORCED;

ALTER TABLE `your-project.your_dataset.order_items`
  ADD FOREIGN KEY (order_id)
    REFERENCES `your-project.your_dataset.orders`(order_id) NOT ENFORCED,
  ADD FOREIGN KEY (product_id)
    REFERENCES `your-project.your_dataset.products`(product_id) NOT ENFORCED;