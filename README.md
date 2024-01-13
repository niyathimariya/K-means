# US-Arrest_K-means
Using R and the ISLR library, this project conducted an in-depth K-Means clustering analysis on the 'USArrests' dataset. The goal was to reveal patterns and insights in arrest-related data. The process included scaling for uniformity and exploring the impact of different cluster numbers (K) on result interpretability.

 Key steps and findings include:

Data Preprocessing:
The 'USArrests' dataset was loaded and standardized using the scale function.

K-Means Clustering:
Applied K-Means clustering algorithm with different values of 'k' (number of clusters).
Explored clustering results for k=2, k=3, k=4, k=5, and k=6, using multiple random starts to ensure stability.
Utilized the kmeans function from the cluster package to perform the clustering.

Visualization:
Plotted the data points with colors representing the clusters for each k value.
Created a scree plot to determine an optimal number of clusters based on total within-cluster sum of squares.

Insights:
Conducted a comparative analysis between k=3 and k=4 using the factoextra and cluster libraries.
Identified that k=4 provides better insights into the underlying structure of the data.

Additional Analysis:
Utilized the fviz_cluster function from the factoextra library to visualize clusters for k=3 and k=4.
Compared and evaluated the clustering results for k=3, k=4, and k=6.

Conclusion:
Concluded that a cluster value of k=4 is optimal for revealing meaningful patterns in the USArrests dataset.
This project showcases proficiency in data analysis, clustering techniques, and data visualization using R. The ability to interpret and communicate insights from the clustering analysis is highlighted, emphasizing a data-driven approach to problem-solving.



