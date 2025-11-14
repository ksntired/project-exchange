-- SQL миграция для Supabase
-- Добавляет поле 'role' в таблицу 'profiles'

-- 1. Добавить колонку role (если её нет)
ALTER TABLE profiles 
ADD COLUMN role VARCHAR DEFAULT 'user';

-- 2. Создать индекс для быстрого поиска по роли (опционально)
CREATE INDEX idx_profiles_role ON profiles(role);

-- 3. Примеры обновления роли для тестирования:
-- UPDATE profiles SET role = 'staff' WHERE user_id = 'uuid-пользователя';
-- UPDATE profiles SET role = 'admin' WHERE user_id = 'uuid-администратора';

-- 4. Проверить текущие роли
-- SELECT user_id, role FROM profiles;
