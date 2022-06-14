export const get = async () => {
	const allResourceFiles = import.meta.glob('../resources/*.md');
	const iterableResourceFiles = Object.entries(allResourceFiles);

	const allResources = await Promise.all(
		iterableResourceFiles.map(async ([path, resolver]) => {
			const { metadata } = await resolver();
			const resourcePath = path.slice(2, -3);

			return {
				meta: metadata,
				path: resourcePath
			};
		})
	);

	const sortedResources = allResources.sort((a, b) => {
		const nameA = a.meta.title.toUpperCase(); // ignore upper and lowercase
		const nameB = b.meta.title.toUpperCase(); // ignore upper and lowercase
		if (nameA < nameB) {
			return -1;
		} else if (nameA > nameB) {
			return 1;
		}
		return 0;
	});

	return {
		body: sortedResources
	};
};
