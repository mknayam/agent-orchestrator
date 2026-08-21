-- +goose Up
UPDATE app_settings
SET default_session_mode = 'chat', updated_at = CURRENT_TIMESTAMP
WHERE id = 1;

-- +goose Down
UPDATE app_settings
SET default_session_mode = 'tui', updated_at = CURRENT_TIMESTAMP
WHERE id = 1;
