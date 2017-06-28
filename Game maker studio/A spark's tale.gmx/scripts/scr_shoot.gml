
pl = argument0
if(pl.inventory.equipedWeapon >= 0){
    wp = pl.inventory.weapons[pl.inventory.equipedWeapon]
    if(wp.canShoot){
        bl = instance_create(pl.x, pl.y, wp.bulletType)
        bl.direction = point_direction(pl.x, pl.y, mouse_x, mouse_y)
        bl.effet = wp.effect
        wp.canShoot = 0
        wp.alarm[0] = floor(room_speed*wp.shootTime)
    }
}
