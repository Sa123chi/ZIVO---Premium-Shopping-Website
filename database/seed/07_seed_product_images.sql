USE zivo_db;

INSERT INTO product_images
(
product_id,
image_url,
alt_text,
is_primary,
display_order
)
VALUES

(
1,
'https://www.google.com/imgres?q=iphone%2016%20front%20&imgurl=https%3A%2F%2Fs3b.cashify.in%2Fgpro%2Fuploads%2F2022%2F04%2F10165410%2Fapple-iphone-16-front-1.webp&imgrefurl=https%3A%2F%2Fwww.cashify.in%2Fapple-iphone-16-price-in-india&docid=MU4B9MrD6jcRTM&tbnid=KWv6xBaEjWhJQM&vet=12ahUKEwiN1cfI8LuVAxXg1DgGHZKNAB8QnPAOegQIOBAA..i&w=500&h=500&hcb=2&ved=2ahUKEwiN1cfI8LuVAxXg1DgGHZKNAB8QnPAOegQIOBAA',
'iPhone 16 Pro Front',
TRUE,
1
),

(
1,
'https://www.google.com/imgres?q=iphone%2016%20back%20image&imgurl=https%3A%2F%2Faprozone.in%2Fcdn%2Fshop%2Ffiles%2FiPhone16ProMaxFrostedGrey.webp%3Fv%3D1727696583%26width%3D1080&imgrefurl=https%3A%2F%2Faprozone.in%2Fproducts%2Fiphone-16-pro-back-cover-thinnest-case-copy%3Fsrsltid%3DAfmBOoojYoQjVTbG4q7qqF7p-F27h3WielQgYdq0zlCtIvS8I-xaJiyi&docid=JNOmuyi4TInnWM&tbnid=7deSqZnBthxRoM&vet=12ahUKEwjEs4fe8LuVAxVe1TgGHcTbLAoQnPAOegQINhAA..i&w=1080&h=1080&hcb=2&ved=2ahUKEwjEs4fe8LuVAxVe1TgGHcTbLAoQnPAOegQINhAA',
'iPhone 16 Pro Back',
FALSE,
2
),

(
2,
'products/samsung/s25/front.jpg',
'Samsung Galaxy S25 Ultra Front',
TRUE,
1
),

(
2,
'products/samsung/s25/back.jpg',
'Samsung Galaxy S25 Ultra Back',
FALSE,
2
);