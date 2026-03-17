-- 📊 Livros publicados após 2000
SELECT COUNT(*) AS books_after_2000
FROM books
WHERE publication_date > '2000-01-01';

-- 📚 Número de avaliações por livro
SELECT
    b.title,
    COUNT(r.rating_id) AS num_ratings,
    AVG(r.rating) AS avg_rating
FROM books b
LEFT JOIN ratings r
ON b.book_id = r.book_id
GROUP BY b.title
ORDER BY num_ratings DESC;

-- 🏢 Editora com mais livros relevantes
SELECT
    p.publisher,
    COUNT(b.book_id) AS num_books
FROM books b
JOIN publishers p
ON b.publisher_id = p.publisher_id
WHERE b.num_pages > 50
GROUP BY p.publisher
ORDER BY num_books DESC
LIMIT 1;

-- ✍️ Autor com melhor avaliação média
SELECT
    a.author,
    AVG(r.rating) AS avg_rating
FROM books b
JOIN ratings r
ON b.book_id = r.book_id
JOIN authors a
ON b.author_id = a.author_id
GROUP BY a.author, b.book_id
HAVING COUNT(r.rating_id) >= 50
ORDER BY avg_rating DESC
LIMIT 1;

-- 👥 Comportamento de usuários ativos
SELECT
    AVG(review_count) AS avg_reviews
FROM
(
    SELECT
        rv.username,
        COUNT(rv.review_id) AS review_count
    FROM reviews rv
    WHERE rv.username IN
    (
        SELECT username
        FROM ratings
        GROUP BY username
        HAVING COUNT(rating_id) > 50
    )
    GROUP BY rv.username
) AS active_users;
