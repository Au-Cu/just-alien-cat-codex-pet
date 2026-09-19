# Artwork generation

Tool: built-in imagegen, precise-object-edit mode. This package uses the first generated variant, selected by the user. Later variants are excluded.

Inputs: upstream `pet/spritesheet.webp` at commit `aa97d98915999009ee60419d30a086a3846c1d59`, plus a user-provided green alien-cat plush reference. The reference photo is not redistributed.

Final prompt for the selected generation:

> Use case: precise-object-edit. Edit image 1, a production game sprite atlas. Image 2 is ONLY the alien cat color/eye reference, not a style reference. Output a transparent PNG sprite atlas exactly 1536 x 2288 pixels, 8 columns by 11 rows, each cell 192x208. Preserve EVERY original character pose, silhouette, frame location, head/body proportions, scale, all negative space and all empty cells EXACTLY. Preserve original simple flat 2D cartoon style, thin dark outlines, no fur or plush texture. Change ONLY: (1) all gray body/head/limbs to flat lime/chartreuse green inspired by image 2 (#ACD64D approximate); (2) open eyes to narrower elongated solid black alien almond/teardrop shapes with outer corners tilted upward and inner corners lowered, as reference 2, no pupils/shine, adapt naturally to each head direction; closed eyes remain closed; (3) remove every W-shaped mouth completely and fill with matching body green. Preserve small nose dot and the separate lower mouth-corner mole dot, but absolutely NO mouth strokes. Preserve all original 9 animation rows and 16 directional gaze frames in last two rows. Do not add or duplicate characters or fill originally empty cells. Transparent background with genuine alpha, no checkerboard, no labels, no grid, no shadows. This is a strict texture edit of image 1, not redesign or rearrangement. Keep pose and placement exactly.

The selected output does not satisfy every prompt constraint: some mouth marks and original eye shapes remain. The user accepted this first variant. The generated PNG was 1027 × 1531 and was resized to the upstream 1536 × 2288 atlas dimensions and converted to lossless WebP for packaging. No claim of pixel-identical animation geometry is made.

Validation: 74 expected occupied cells, transparent RGBA, expected atlas dimensions. Windows installer tested against a temporary pets directory; installed file SHA-256 hashes matched the package. Live Codex playback has not been tested.
