

After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_').downcase!
    screenshot = "log/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Evidências')
end


