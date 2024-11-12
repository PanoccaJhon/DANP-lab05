INSERT INTO artists (name, lastname, specialty, photo, biography, awards) VALUES
('Pablo', 'Picasso', 'Painting', 'picasso.jpg', 'Spanish painter and sculptor, one of the most influential artists of the 20th century.', 'National Prize of Fine Arts, Lenin Peace Prize'),
('Frida', 'Kahlo', 'Painting', 'kahlo.jpg', 'Mexican painter known for her self-portraits and representation of Mexican culture.', 'National Prize of Arts and Sciences'),
('Vincent', 'van Gogh', 'Painting', 'vangogh.jpg', 'Dutch painter famous for his expressive brushwork and vibrant colors.', 'Posthumous recognition as one of the greatest painters of all time'),
('Leonardo', 'da Vinci', 'Painting, Sculpture', 'davinci.jpg', 'Italian polymath and Renaissance genius known for "Mona Lisa" and "The Last Supper".', 'Royal Academy of Arts Honorary'),
('Auguste', 'Rodin', 'Sculpture', 'rodin.jpg', 'French sculptor known as the father of modern sculpture, famous for "The Thinker".', 'Legion of Honour')

INSERT INTO galleries (name, description) VALUES
('Modern Art Gallery', 'A gallery specializing in contemporary and modern art exhibitions.'),
('Renaissance Art Exhibit', 'Dedicated to showcasing works from the Renaissance period, including paintings, sculptures, and artifacts.'),
('Sculpture Haven', 'An open gallery featuring sculptures from around the world, both historical and modern.'),
('Photography House', 'A gallery focused on contemporary photography, highlighting renowned and emerging photographers.'),
('Impressionist Showcase', 'A gallery that exclusively displays Impressionist works from artists like Monet, Renoir, and Degas.'),
('Digital Art Space', 'An innovative gallery displaying digital art, including interactive and multimedia installations.'),
('Abstract Visions', 'A gallery that celebrates abstract art with exhibitions from both established and emerging artists.');

INSERT INTO users (name, email, phone, password, photo_url) VALUES
('Alice Johnson', 'alice.johnson@example.com', '555-1234', 'password123', 'alice.jpg'),
('Bob Smith', 'bob.smith@example.com', '555-5678', 'securepassword456', 'bob.jpg'),
('Carlos Rivera', 'carlos.rivera@example.com', '555-9101', 'password789', 'carlos.jpg'),
('Diana Lee', 'diana.lee@example.com', '555-1122', 'mypassword101', 'diana.jpg'),
('Ethan Brown', 'ethan.brown@example.com', '555-3344', 'ethanpass202', 'ethan.jpg'),
('Fiona Garcia', 'fiona.garcia@example.com', '555-5566', 'fionapass303', 'fiona.jpg'),
('George Wilson', 'george.wilson@example.com', '555-7788', 'georgepass404', 'george.jpg'),
('Hannah Kim', 'hannah.kim@example.com', '555-9900', 'hannahpass505', 'hannah.jpg'),
('Ivan Martinez', 'ivan.martinez@example.com', '555-2233', 'ivanpass606', 'ivan.jpg'),
('Julia Lopez', 'julia.lopez@example.com', '555-4455', 'juliapass707', 'julia.jpg');

INSERT INTO user_preferences (user_id, dark_theme, language) VALUES
(1, true, 'English'),
(2, false, 'Spanish'),
(3, true, 'French'),
(4, false, 'English'),
(5, true, 'German'),
(6, true, 'Italian'),
(7, false, 'Spanish'),
(8, true, 'Korean'),
(9, false, 'Portuguese'),
(10, true, 'Japanese');

INSERT INTO exhibitions (name, gallery_id, artist_id, period, description_text, description_audio, state) VALUES
('Picasso: Blue Period', 1, 1, '1901-1904', 'An exhibition focused on the melancholic Blue Period of Picasso.', 'picasso_blue_period.mp3', true),
('Picasso: Cubism Revolution', 2, 1, '1907-1917', 'Explores Picasso’s pioneering role in Cubism.', 'picasso_cubism.mp3', false),
('Frida Kahlo: Self-Portraits', 3, 2, '1930s-1950s', 'A showcase of Kahlo’s most famous self-portraits.', 'kahlo_self_portraits.mp3', true),
('Frida Kahlo: Pain and Passion', 4, 2, '1940s', 'An intimate look at Kahlo’s life and struggles.', 'kahlo_pain_passion.mp3', false),
('Van Gogh: Starry Nights', 5, 3, '1889', 'Features some of Van Gogh’s most iconic works, including "Starry Night".', 'vangogh_starry_nights.mp3', true),
('Van Gogh: Sunflowers and Beyond', 6, 3, '1888', 'An exhibition of Van Gogh’s famous sunflower series.', 'vangogh_sunflowers.mp3', true),
('Da Vinci: The Genius', 1, 4, '1480s-1519', 'A comprehensive display of Leonardo’s inventions, art, and notebooks.', 'davinci_genius.mp3', true),
('Leonardo’s Renaissance', 2, 4, '1490s', 'Showcases da Vinci’s influence on the Renaissance.', 'davinci_renaissance.mp3', false),
('Rodin: The Thinker and Other Works', 3, 5, '1880s', 'Explores Rodin’s most notable sculptures.', 'rodin_thinker.mp3', true),
('Rodin: Modern Sculpture', 4, 5, '1890s', 'Focuses on Rodin’s impact on modern sculpture.', 'rodin_modern_sculpture.mp3', false);

INSERT INTO works (title, exhibition_id, technique, description, dimension, year, image, position_x, position_y) VALUES
('The Old Guitarist', 1, 'Oil on canvas', 'A melancholic portrayal of an old musician.', '122.9 x 82.6 cm', 1903, 'old_guitarist.jpg', 0.1, 0.2),
('La Vie', 1, 'Oil on canvas', 'A complex painting about life and relationships.', '196 x 129.5 cm', 1903, 'la_vie.jpg', 0.2, 0.3),
('Woman with Folded Hands', 1, 'Oil on canvas', 'Portrait of a sorrowful woman with her hands folded.', '105 x 75 cm', 1902, 'woman_with_folded_hands.jpg', 0.3, 0.1),
('The Tragedy', 1, 'Oil on wood', 'A scene of despair by the sea.', '105 x 69 cm', 1903, 'the_tragedy.jpg', 0.4, 0.2),
('Woman Ironing', 1, 'Oil on canvas', 'Depicts a woman engaged in manual labor.', '116.2 x 73 cm', 1904, 'woman_ironing.jpg', 0.5, 0.3),
('Celestina', 1, 'Oil on canvas', 'Portrait of a blind woman known as the Celestina.', '66 x 53 cm', 1904, 'celestina.jpg', 0.6, 0.4),
('Blind Man’s Meal', 1, 'Oil on canvas', 'A portrayal of a blind man seated alone.', '95.3 x 94.6 cm', 1903, 'blind_mans_meal.jpg', 0.7, 0.5),
('Mother and Child', 1, 'Oil on canvas', 'A sorrowful depiction of motherhood.', '92.1 x 67 cm', 1903, 'mother_and_child.jpg', 0.8, 0.6),
('Two Sisters', 1, 'Oil on canvas', 'Two women are seen embracing.', '152.7 x 100 cm', 1902, 'two_sisters.jpg', 0.9, 0.7),
('The Absinthe Drinker', 1, 'Oil on canvas', 'A figure slouched in sorrow over a drink.', '73 x 54 cm', 1902, 'absinthe_drinker.jpg', 1.0, 0.8),
('Les Demoiselles d’Avignon', 2, 'Oil on canvas', 'A revolutionary piece in the development of Cubism.', '243.9 x 233.7 cm', 1907, 'les_demoiselles.jpg', 0.1, 0.1),
('Girl with a Mandolin', 2, 'Oil on canvas', 'A Cubist representation of a girl playing a mandolin.', '100.3 x 73.6 cm', 1910, 'girl_with_mandolin.jpg', 0.2, 0.2),
('Man with a Guitar', 2, 'Oil on canvas', 'An abstract portrait of a man holding a guitar.', '116.2 x 81 cm', 1911, 'man_with_guitar.jpg', 0.3, 0.3),
('Portrait of Ambroise Vollard', 2, 'Oil on canvas', 'Cubist portrait of art dealer Ambroise Vollard.', '92 x 65 cm', 1910, 'ambroise_vollard.jpg', 0.4, 0.4),
('Three Musicians', 2, 'Oil on canvas', 'A brightly colored and complex Cubist painting.', '200.7 x 222.9 cm', 1921, 'three_musicians.jpg', 0.5, 0.5),
('Woman with a Fan', 2, 'Oil on canvas', 'A fragmented portrayal of a woman with a fan.', '152.4 x 101.6 cm', 1909, 'woman_with_fan.jpg', 0.6, 0.6),
('Violin and Candlestick', 2, 'Oil on canvas', 'A classic example of Cubist still life.', '81.3 x 54 cm', 1910, 'violin_and_candlestick.jpg', 0.7, 0.7),
('The Poet', 2, 'Oil on canvas', 'A highly abstract depiction of a poet.', '131.2 x 89.5 cm', 1911, 'the_poet.jpg', 0.8, 0.8),
('Woman with Pears', 2, 'Oil on canvas', 'Portrait of Picasso’s lover, Dora Maar, in a Cubist style.', '92 x 65 cm', 1909, 'woman_with_pears.jpg', 0.9, 0.9),
('Ma Jolie', 2, 'Oil on canvas', 'An abstract composition, named after Picasso’s lover.', '100 x 65 cm', 1911, 'ma_jolie.jpg', 1.0, 1.0),
('The Broken Column', 4, 'Oil on canvas', 'A self-portrait symbolizing her physical and emotional pain, with her body split open to reveal a fractured column.', '39.8 x 30.6 cm', 1944, 'the_broken_column.jpg', 0.1, 0.2),
('Self-Portrait with Thorn Necklace and Hummingbird', 4, 'Oil on canvas', 'Kahlo portrayed herself with a thorn necklace, symbolizing her suffering, and a hummingbird for hope.', '61.25 x 47 cm', 1940, 'self_portrait_thorn_necklace.jpg', 0.2, 0.3),
('The Two Fridas', 4, 'Oil on canvas', 'A double self-portrait showing two versions of Frida, each representing different aspects of her identity.', '173.5 x 173 cm', 1939, 'the_two_fridas.jpg', 0.3, 0.1),
('Henry Ford Hospital', 4, 'Oil on metal', 'A representation of Kahlo’s anguish following a miscarriage, showing her isolated on a hospital bed.', '30.5 x 38 cm', 1932, 'henry_ford_hospital.jpg', 0.4, 0.2),
('Self-Portrait with Cropped Hair', 4, 'Oil on canvas', 'A defiant self-portrait in which Kahlo cut her hair after separating from Rivera, reflecting her independence.', '40 x 27.9 cm', 1940, 'self_portrait_cropped_hair.jpg', 0.5, 0.3),
('Without Hope', 4, 'Oil on canvas', 'A vivid painting showing Kahlo’s suffering due to forced feeding, with grotesque food items being forced into her mouth.', '28 x 36 cm', 1945, 'without_hope.jpg', 0.6, 0.4),
('The Wounded Deer', 4, 'Oil on masonite', 'A depiction of Kahlo as a wounded deer, symbolizing her pain and struggles with illness.', '22.4 x 30 cm', 1946, 'the_wounded_deer.jpg', 0.7, 0.5),
('Starry Night', 5, 'Oil on canvas', 'One of Van Gogh’s most famous works, depicting a swirling night sky over a quiet town.', '73.7 x 92.1 cm', 1889, 'starry_night.jpg', 0.1, 0.1),
('The Starry Night Over the Rhône', 5, 'Oil on canvas', 'A view of the night sky over the Rhône river, with reflections of lights.', '72.5 x 92 cm', 1888, 'starry_night_over_the_rhone.jpg', 0.2, 0.2),
('The Café Terrace at Night', 5, 'Oil on canvas', 'Depicts a café in Arles at night, illuminated with bright colors against a dark sky.', '81 x 65.5 cm', 1888, 'cafe_terrace_night.jpg', 0.3, 0.3),
('Road with Cypress and Star', 5, 'Oil on canvas', 'A dynamic night scene with a cypress tree pointing towards a bright star.', '92 x 73 cm', 1890, 'road_with_cypress_star.jpg', 0.4, 0.4),
('Wheatfield with Cypresses', 5, 'Oil on canvas', 'A vivid portrayal of a wheatfield under a swirling sky, with cypress trees.', '73 x 93.4 cm', 1889, 'wheatfield_with_cypresses.jpg', 0.5, 0.5),
('Sunflowers', 6, 'Oil on canvas', 'Part of Van Gogh’s famous series of sunflower paintings, symbolizing happiness and vitality.', '92.1 x 73 cm', 1888, 'sunflowers.jpg', 0.1, 0.1),
('Vase with Fifteen Sunflowers', 6, 'Oil on canvas', 'A vibrant still life featuring sunflowers in a vase.', '100 x 76 cm', 1888, 'vase_with_fifteen_sunflowers.jpg', 0.2, 0.2),
('Irises', 6, 'Oil on canvas', 'A lush and colorful portrayal of irises, showcasing Van Gogh’s love of nature.', '71 x 93 cm', 1889, 'irises.jpg', 0.3, 0.3),
('Almond Blossoms', 6, 'Oil on canvas', 'A delicate depiction of almond blossoms, symbolizing hope and renewal.', '73.5 x 92 cm', 1890, 'almond_blossoms.jpg', 0.4, 0.4),
('Vase with Twelve Sunflowers', 6, 'Oil on canvas', 'Another iconic sunflower painting, part of the series done in Arles.', '91 x 71 cm', 1888, 'vase_with_twelve_sunflowers.jpg', 0.5, 0.5),
('Mona Lisa', 7, 'Oil on poplar panel', 'The world-renowned portrait of a woman with an enigmatic smile.', '77 x 53 cm', 1503, 'mona_lisa.jpg', 0.1, 0.1),
('The Last Supper', 7, 'Tempera on gesso', 'Depicts the moment Jesus announces his betrayal during the Last Supper.', '460 x 880 cm', 1498, 'last_supper.jpg', 0.2, 0.2),
('Vitruvian Man', 7, 'Pen and ink on paper', 'A drawing illustrating the ideal human proportions based on ancient Roman architect Vitruvius.', '34.4 x 25.5 cm', 1490, 'vitruvian_man.jpg', 0.3, 0.3),
('Lady with an Ermine', 7, 'Oil on wood', 'Portrait of Cecilia Gallerani holding an ermine, symbolizing purity and moderation.', '54 x 39 cm', 1489, 'lady_with_ermine.jpg', 0.4, 0.4),
('Self-Portrait', 7, 'Red chalk on paper', 'A possible self-portrait of Leonardo in his later years.', '33 x 21.6 cm', 1512, 'self_portrait.jpg', 0.5, 0.5),
('Head of a Woman', 7, 'Silverpoint on paper', 'A study of a woman’s face, often known as La Scapigliata.', '24.6 x 21 cm', 1508, 'head_of_a_woman.jpg', 0.6, 0.6),
('Studies of Horses', 7, 'Ink on paper', 'Detailed studies of horses and their anatomy.', '26 x 19 cm', 1480, 'studies_of_horses.jpg', 0.7, 0.7),
('The Baptism of Christ', 8, 'Oil and tempera on wood', 'Painted in collaboration with Verrocchio, featuring an angel by Leonardo.', '177 x 151 cm', 1475, 'baptism_of_christ.jpg', 0.1, 0.1),
('Annunciation', 8, 'Oil on wood', 'Depicts the angel Gabriel announcing to Mary that she will bear the Son of God.', '98 x 217 cm', 1472, 'annunciation.jpg', 0.2, 0.2),
('Ginevra de Benci', 8, 'Oil on wood', 'Portrait of Ginevra de Benci, a young noblewoman from Florence.', '38.8 x 36.7 cm', 1474, 'ginevra_de_benci.jpg', 0.3, 0.3),
('St. John the Baptist', 8, 'Oil on walnut wood', 'Depicts St. John in a contemplative pose, pointing upwards.', '69 x 57 cm', 1516, 'st_john_baptist.jpg', 0.4, 0.4),
('The Adoration of the Magi', 8, 'Oil on wood', 'An unfinished work showing the Three Kings adoring the infant Jesus.', '246 x 243 cm', 1481, 'adoration_of_magi.jpg', 0.5, 0.5),
('The Benois Madonna', 8, 'Oil on canvas', 'A tender portrayal of Mary and the infant Jesus.', '49.5 x 33 cm', 1478, 'benois_madonna.jpg', 0.6, 0.6),
('Madonna of the Carnation', 8, 'Oil on wood', 'Depicts Mary holding the infant Jesus with a carnation in hand.', '62 x 47.5 cm', 1478, 'madonna_carnation.jpg', 0.7, 0.7),
('The Thinker', 9, 'Bronze', 'One of Rodin’s most famous sculptures, symbolizing deep contemplation.', '180 x 98 x 145 cm', 1904, 'the_thinker.jpg', 0.1, 0.1),
('The Kiss', 9, 'Marble', 'Depicts a passionate embrace between two lovers, originally intended as part of "The Gates of Hell".', '181.5 x 112.5 x 117 cm', 1882, 'the_kiss.jpg', 0.2, 0.2),
('The Burghers of Calais', 9, 'Bronze', 'A powerful depiction of six men offering themselves for execution to save their city.', '200 x 250 x 250 cm', 1889, 'the_burghers_of_calais.jpg', 0.3, 0.3),
('The Gates of Hell', 9, 'Bronze', 'A monumental portal featuring numerous sculptures, including early versions of The Thinker and The Kiss.', '635 x 400 cm', 1880, 'gates_of_hell.jpg', 0.4, 0.4),
('The Hand of God', 9, 'Marble', 'A symbolic piece showing a hand emerging from the earth, creating life.', '53 x 31 x 35 cm', 1898, 'the_hand_of_god.jpg', 0.5, 0.5),
('Monument to Balzac', 10, 'Bronze', 'A tribute to the French writer Balzac, expressing his personality and intellect.', '270 cm height', 1897, 'balzac.jpg', 0.1, 0.1),
('The Walking Man', 10, 'Bronze', 'A study of movement, focusing on the human body in motion without arms or head.', '214 cm height', 1877, 'walking_man.jpg', 0.2, 0.2),
('Eternal Springtime', 10, 'Marble', 'Depicts a man and a woman in a romantic embrace, symbolizing love and renewal.', '66 x 71 x 45 cm', 1907, 'eternal_springtime.jpg', 0.3, 0.3),
('The Thinker (Small Version)', 10, 'Bronze', 'A smaller version of The Thinker, still expressing deep thought and contemplation.', '72 x 37 x 58 cm', 1904, 'thinker_small.jpg', 0.4, 0.4),
('I Am Beautiful', 10, 'Bronze', 'A dramatic sculpture of a man and a woman intertwined, inspired by Baudelaire’s poem.', '72.2 x 40.5 x 27 cm', 1882, 'i_am_beautiful.jpg', 0.5, 0.5);











