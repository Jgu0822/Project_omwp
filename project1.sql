use project1;

show tables;

desc member;	
desc product;
desc wish;
desc orderlist;
desc review;
desc img;

-- 회원 --

select * from member;
insert into member(user_create, user_email, user_name, user_phone, user_pw, user_role)
values(now(),'m1@gmail.com','m1','010-1111-1111','1111','ADMIN');
insert into member(user_create, user_email, user_name, user_phone, user_pw, user_role)
values(now(),'m2@gmail.com','m2','010-222-1111','2222','MEMBER');
insert into member(user_create, user_email, user_name, user_phone, user_pw, user_role)
values(now(),'m3@gmail.com','m3','010-3333-1111','3333','MEMBER');
insert into member(user_create, user_email, user_name, user_phone, user_pw, user_role)
values(now(),'m4@gmail.com','m4','010-4444-1111','4444','MEMBER');
insert into member(user_create, user_email, user_name, user_phone, user_pw, user_role)
values(now(),'m5@gmail.com','m5','010-5555-1111','5555','MEMBER');


-- 상품 --

select * from product;


insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','A상품', '10000','아이티',1,1);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','B상품', '20000','예체능',2,2);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','C상품', '30000','디자인',3,3);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','D상품', '40000','사무',4,4);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','E상품', '50000','마케팅',5,5);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','F상품', '60000','재테크',6,6);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','G상품', '70000','아이티',7,7);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','H상품', '80000','예체능',8,8);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','I상품', '90000','디자인',9,9);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','J상품', '100000','사무',10,10);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','K상품', '110000','마케팅',11,11);
insert into product(product_create,product_desc, product_name,product_price,product_type,review_count,attach_img) values(now(), '재능기부','L상품', '120000','재테크',12,12);

delete from product where product_id ='15';

insert into review(review_id,review_content,review_date,review_writer) values(1,'내용1',now(),'작성자1');

-- product_id 내림 -> 최신, 큰-> 작은 z->a
select * from product order by product_id desc; 

-- product_price 가격순 정렬
select * from product order by product_price asc; 
-- product_create 등록 시간순 정렬
select * from product order by product_create asc;
-- review_count 리뷰순 정렬
select * from product order by review_count asc;


select * from product where product_type ='It';

